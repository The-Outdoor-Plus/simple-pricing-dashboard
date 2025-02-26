<template>
  <Dialog :header="dialogTitle" :visible="visible" @hide="emit('update:visible', false)" :modal="true" :closable="false"
    :style="{ width: '92%', maxWidth: '800px' }">
    <div class="flex flex-col gap-2 mb-6">
      <label for="fileNumber" class="font-semibold">{{ uploadType === 'estimate' ? 'Estimate' : uploadType ===
        'salesOrder' ? 'Sales Order' : uploadType === 'invoice' ? 'Invoice' : 'Purchase Order' }} Number</label>
      <InputText id="fileNumber" name="fileNumber" type="text" v-model="fileNumber" />
      <label for="paymentLink" class="font-semibold mt-4">Payment Link</label>
      <InputText v-if="uploadType === 'invoice'" id="paymentLink" name="paymentLink" type="text"
        v-model="paymentLink" />
    </div>
    <p v-if="fileLink" class="font-semibold text-red-500 mb-3">Note: Uploading a file will overwrite the existing file.
    </p>
    <FileUpload ref="fileupload" name="files[]" @upload="onUpload" :multiple="false" accept="application/pdf"
      :maxFileSize="26214400" @select="onSelect" :customUpload="true" @uploader="onUpload">
      <template #header="{ chooseCallback, uploadCallback, clearCallback, files }">
        <div class="flex flex-wrap justify-between items-center flex-1 gap-4 w-full">
          <div class="flex gap-2 w-full">
            <Button @click="chooseCallback()" icon="pi pi-upload" rounded outlined severity="secondary"></Button>
            <Button @click="uploadEvent(uploadCallback)" icon="pi pi-cloud-upload" outlined severity="success"
              :disabled="!files || files.length === 0" class="!w-32" fluid>Submit file</Button>
            <Button @click="clearCallback()" icon="pi pi-times" rounded outlined severity="danger"
              :disabled="!files || files.length === 0"></Button>
          </div>
          <ProgressBar :value="progress" :showValue="false" class="md:w-20rem h-1 w-full md:ml-auto">
            <span class="whitespace-nowrap">{{ totalSize }}B / 1Mb</span>
          </ProgressBar>
        </div>
      </template>
      <template #content="{ files, uploadedFiles, removeUploadedFileCallback, removeFileCallback }">
        <div class="flex flex-col gap-8 pt-4">
          <div v-if="files.length > 0">
            <h5 class="text-lg font-semibold mb-2">Pending</h5>
            <div class="flex flex-wrap gap-4">
              <div v-for="(file, index) of files" :key="file.name + file.type + file.size"
                class="py-8 rounded-border flex flex-col border border-surface items-center gap-4 w-60">
                <span class="font-semibold text-ellipsis max-w-96 whitespace-nowrap overflow-hidden">{{ file.name
                }}</span>
                <div>{{ formatSize(file.size) }}</div>
                <Badge value="Pending" severity="warn" />
                <Button icon="pi pi-times" @click="removeFileCallback(file, removeFileCallback, index)" outlined rounded
                  severity="danger" />
              </div>
            </div>
          </div>

          <div v-if="uploadedFiles.length > 0">
            <h5>Completed</h5>
            <div class="flex flex-wrap gap-4">
              <div v-for="(file, index) of uploadedFiles" :key="file.name + file.type + file.size"
                class="p-8 rounded-border flex flex-col border border-surface items-center gap-4">
                <span class="font-semibold text-ellipsis max-w-60 whitespace-nowrap overflow-hidden">{{ file.name
                }}</span>
                <div>{{ formatSize(file.size) }}</div>
                <Badge value="Completed" class="mt-4" severity="success" />
                <Button icon="pi pi-times" @click="removeUploadedFileCallback(index)" outlined rounded
                  severity="danger" />
              </div>
            </div>
          </div>
        </div>
      </template>
      <template #empty>
        <div class="flex items-center justify-center flex-col">
          <i class="pi pi-cloud-upload !border-2 !rounded-full !p-8 !text-4xl !text-muted-color" />
          <p class="mt-6 mb-0">Drag and drop files to here to upload.</p>
        </div>
      </template>
    </FileUpload>


    <div class="flex justify-end mt-4">
      <Button label="Cancel" icon="pi pi-times" @click="emit('update:visible', false)" class="mr-2" />
      <!-- <Button label="Upload" icon="pi pi-check" @click="handleUpload" /> -->
    </div>
  </Dialog>
</template>

<script setup>
import { ref, watch } from 'vue';
import Dialog from 'primevue/dialog';
import FileUpload from 'primevue/fileupload';
import Button from 'primevue/button';
import ProgressBar from 'primevue/progressbar';
import Badge from 'primevue/badge';
import { useUserStore } from '@/store/user';
import { useFile } from '@/composables/file';
import { babelParse } from 'vue/compiler-sfc';

const { uploadFileToS3, deleteFileFromS3WithCloudFrontUrl } = useFile();

const props = defineProps({
  visible: Boolean,
  dialogTitle: String,
  uploadType: String, // 'estimate', 'salesOrder', 'invoice'
  company: String,
  fileNumber: String,
  fileLink: String,
});

const emit = defineEmits(['update:visible', 'file-uploaded', 'file-upload-error']);
const progress = ref(0);
const totalSize = ref(0);
const fileupload = ref(null);
const fileNumber = ref('');
const paymentLink = ref('');

const uploadEvent = (callback) => {
  callback();
};

const onUpload = async (event) => {

  fileupload.value.files = event.files;
  const formData = new FormData();
  progress.value = 20;
  formData.append('file', event.files[0]);
  let path = '/rfqs/';
  if (props.uploadType) {
    path = `${path}${props.uploadType}/`;
  }
  if (props.company) {
    path = `${path}${props.company}/`;
  }
  if (props.user) {
    path = `${path}${props.user}/`;
  }

  formData.append('path', path);
  progress.value = 40;
  try {
    if (props.fileLink) {
      await deleteFileFromS3WithCloudFrontUrl(props.fileLink);
    }
    const fileUrl = await uploadFileToS3(formData);
    fileupload.value.uploadedFiles = event.files;
    progress.value = 100;
    let pymntLink = props.uploadType === 'invoice' ? paymentLink?.value || null : null;
    emit('file-uploaded', { type: props.uploadType, fileUrl: fileUrl || null, newFileNumber: fileNumber.value, paymentLink: pymntLink });
  } catch (error) {
    console.error(error);
    emit('file-upload-error', error);
  }
  // Handle the upload logic based on the uploadType
  // emit('update:visible', false); // Close the dialog after upload
};

const onSelect = (event) => {
  if (event.files.length > 1) {
    const testFiles = event.files.at(-1);
    fileupload.value.files = [testFiles];
  }
};

const formatSize = (bytes) => {
  const k = 1024;
  const dm = 2;
  const sizes = ['Bytes', 'KB', 'MB', 'GB', 'TB'];
  const i = Math.floor(Math.log(bytes) / Math.log(k));
  return `${parseFloat((bytes / Math.pow(k, i)).toFixed(dm))} ${sizes[i]}`;
};

watch(() => props.fileNumber, (newVal) => {
  fileNumber.value = newVal;
});
</script>

<style scoped>
/* Add any additional styles here */
</style>
