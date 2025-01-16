<template>
  <Form v-slot="$form" :resolver="resolver" :initial-values="initialValues" @submit="handleSubmit">

    <div class="mb-4">
      <label for="name" class="block mb-1">Name</label>
      <InputText id="name" v-model="form.name" fluid :readonly="viewOnly" />
      <Message v-if="$form.name?.invalid" severity="error" size="small" variant="simple">
        {{ $form.name.error?.message }}
      </Message>
    </div>

    <div class="field mb-4">
      <label for="body" class="font-bold">Email</label>
      <Textarea id="body" v-model="form.html" fluid :rows="20" :readonly="viewOnly"></Textarea>
      <Message v-if="$form.html?.invalid" severity="error" size="smaill" variant="simple">
        {{ $form.html.error?.message }}
      </Message>
    </div>

    <div v-if="viewOnly" class="field mb-4">
      <label for="body" class="font-bold mb-6">Preview</label>
      <div id="preview-container" class="border border-gray-400"></div>
    </div>

    <Button type="submit" label="Save" icon="pi pi-check" class="mt-6" />
    <Button type="button" label="Cancel" severity="contrast" icon="pi pi-times" class="ml-2" @click="cancel" />
  </Form>
</template>

<script setup>
import { ref, reactive, onMounted } from 'vue';
import { useToast } from 'primevue/usetoast';
import { zodResolver } from '@primevue/forms/resolvers/zod';
import { z } from 'zod';
import { renderToStaticMarkup } from '@usewaypoint/email-builder';
import { supabase } from '@/supabase';

const props = defineProps({
  email: {
    type: Object,
    default: null,
  },
  isEdit: {
    type: Boolean,
    default: false,
  },
  viewOnly: {
    type: Boolean,
    default: false,
  },
});

const emit = defineEmits(['saved', 'cancel']);
const toast = useToast();
const loading = ref(false);
const submitted = ref(false);
const CONFIGURATION = ref({});
const initialValues = ref({
  name: '',
  html: '',
});

const form = reactive({
  name: '',
  html: '',
});

const resolver = ref(zodResolver(
  z.object({
    name: z.string().min(1, { message: 'Name is required.' }),
    html: z.string().min(1, { message: 'Email is required.' }),
  })
));

onMounted(() => {
  if (props.email) {
    Object.assign(form, props.email);
    if (props.viewOnly) {
      CONFIGURATION.value = JSON.parse(props.email.html);
      const previewContainer = document.getElementById('preview-container');

      const html = renderToStaticMarkup(CONFIGURATION.value, { rootBlockId: 'root' });

      // Using an iframe for preview
      previewContainer.innerHTML = '<iframe style="width: 100%; height: 500px;"></iframe>';
      const iframe = previewContainer.querySelector('iframe');
      iframe.contentDocument.body.innerHTML = html;
    }
  }
});

const handleSubmit = async ({ valid, values }) => {
  if (valid) {
    try {
      if (props.isEdit) {
        const updateEmail = {
          id: props.email.id,
          name: form.name,
          html: form.html,
        }

        const { data, error } = await supabase.from('emails').update(updateEmail).eq('id', props.email.id);

        if (error) throw error;

        toast.add({
          severity: 'success',
          summary: 'Success',
          detail: 'Email updated successfully',
          life: 3000,
        });
        emit('saved');
      } else {
        const { data, error } = await supabase.from('emails').insert({
          name: form.name,
          html: form.html,
        });

        if (error) throw error;

        toast.add({
          severity: 'success',
          summary: 'Success',
          detail: 'Email created successfully',
          life: 3000,
        });
        emit('saved');
      }
    }
    catch (error) {
      toast.add({
        severity: 'error',
        summary: 'Error',
        detail: 'Something went wrong',
        life: 3000,
      });
    }
  }
};

const cancel = () => {
  emit('cancel');
}
</script>

<style scoped>
/* Add any additional styles here */
</style>
