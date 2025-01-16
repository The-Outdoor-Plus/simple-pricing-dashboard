<template>
  <div class="p-4 max-w-2xl mx-auto w-full">
    <Form v-slot="$form" :resolver="resolver" :initial-values="initialValues" @submit="handleSubmit">
      <div class="mb-4 w-full">
        <label for="first_name" class="block mb-1">First Name</label>
        <InputText id="first_name" v-model="form.first_name" required fluid />
        <Message v-if="$form.first_name?.invalid" severity="error" size="small" variant="simple">{{
          $form.first_name.error?.message }}</Message>
      </div>
      <div class="mb-4">
        <label for="last_name" class="block mb-1">Last Name</label>
        <InputText id="last_name" v-model="form.last_name" required fluid />
        <Message v-if="$form.last_name?.invalid" severity="error" size="small" variant="simple">{{
          $form.last_name.error?.message }}</Message>
      </div>
      <div class="mb-4">
        <label for="email" class="block mb-1">Email</label>
        <InputText id="email" v-model="form.email" type="email" required fluid />
        <Message v-if="$form.email?.invalid" severity="error" size="small" variant="simple">{{
          $form.email.error?.message }}</Message>
      </div>
      <div class="mb-4">
        <label for="company" class="block mb-1">Company</label>
        <div class="flex gap-2 items-center w-full">
          <AutoComplete id="company" v-model="form.company" :suggestions="filteredCompanies" dropdown
            option-label="name" option-value="id" placeholder="Select a Company" fluid @complete="searchCompanies"
            class="w-full">
            <template #option="{ option }">
              <div>
                <p v-html="highlightMatch(option.name)"></p>
                <p class="text-sm text-gray-500 italic capitalize" v-html="highlightMatch(option.role.toLowerCase())">
                </p>
              </div>
            </template>
          </AutoComplete>
          <i v-if="form.company && form.company.id"
            class="pi pi-times p-2 rounded-full text-red-500 hover:bg-red-100/50 cursor-pointer transition-colors duration-300"
            @click="form.company = null"></i>
        </div>
        <span v-if="form?.company?.name" class="text-sm font-bold italic">Selected: {{ form?.company?.name
          }}</span>
        <Message v-if="$form.company?.invalid" severity="error" size="small" variant="simple">{{
          $form.company.error?.message }}</Message>
      </div>
      <div class="mb-4">
        <label for="role" class="block mb-1">Role</label>
        <Select id="role" v-model="form.role" :options="roles" placeholder="Select a Role" fluid required></Select>
        <Message v-if="$form.role?.invalid" severity="error" size="small" variant="simple">{{
          $form.role.error?.message }}</Message>
      </div>
      <div class="mb-4">
        <label for="avatar" class="block mb-1">Profile Picture Url</label>
        <InputText id="avatar" v-model="form.avatar_url" fluid />
        <Message v-if="$form.avatar_url?.invalid" severity="error" size="small" variant="simple">{{
          $form.avatar_url.error?.message }}</Message>
      </div>
      <div v-if="isEdit" class="flex items-center gap-2 mb-1">
        <Checkbox v-model="editUserPassword" inputId="editUserPassword" value="true"></Checkbox>
        <label for="editUserPassword" class="block">Edit User Password</label>
      </div>
      <div v-if="(isEdit && editUserPassword) || !isEdit">
        <div class="mb-4">
          <label for="password" class="block mb-1">Password</label>
          <Password id="password" name="password" placeholder="Password" v-model="form.password" type="email"
            :required="!isEdit" fluid :toggle-mask="true" />
          <Message v-if="$form.password?.invalid" severity="error" size="small" variant="simple">{{
            $form.password.error?.message }}</Message>
        </div>
        <div class="mb-4">
          <label for="password_confirmation" class="block mb-1">Confirm Password</label>
          <Password id="password_confirmation" name="password_confirmation" placeholder="Repeat password"
            v-model="form.password_confirmation" :required="!isEdit" fluid :toggle-mask="true" :feedback="false" />
          <Message v-if="$form.password_confirmation?.invalid" severity="error" size="small" variant="simple">{{
            $form.password_confirmation.error?.message }}</Message>
        </div>
      </div>
      <Button type="submit" label="Save" icon="pi pi-check" class="mt-6" />
      <Button type="button" label="Cancel" severity="contrast" icon="pi pi-times" class="ml-2" @click="cancel" />
    </Form>
  </div>
</template>

<script setup>
import { ref, watch } from 'vue';
import { useToast } from 'primevue/usetoast';
import { supabase } from '@/supabase';
import { zodResolver } from '@primevue/forms/resolvers/zod';
import { z } from 'zod';

const props = defineProps({
  user: {
    type: Object,
    default: () => ({}),
  },
  companies: {
    type: Array,
    required: true,
  },
  isEdit: {
    type: Boolean,
    default: false,
  },
});

const emit = defineEmits(['saved', 'cancel']);
const toast = useToast();
const roles = ref(['ADMIN', 'SALES', 'DEALER', 'DISTRIBUTOR', 'MASTER_DISTRIBUTOR', 'INTERNET', 'LANDSCAPE', 'GROUP'])
const eventQuery = ref('');
const filteredCompanies = ref([]);
const localCompaniesList = ref([]);
const editUserPassword = ref(false);
const initialValues = ref({
  first_name: '',
  last_name: '',
  email: '',
  company: null,
  role: '',
  avatar_url: '',
  password: '',
  password_confirmation: '',
});

const form = ref({
  first_name: '',
  last_name: '',
  email: '',
  company: null,
  role: '',
  avatar_url: '',
  password: '',
  password_confirmation: '',
});

const resolver = ref(zodResolver(
  z.object({
    first_name: z.string().min(1, { message: 'First Name is required.' }),
    last_name: z.string().optional(),
    email: z.string().min(1, { message: 'Email is required.' }).email({ message: 'Invalid email address' }),
    company: z.string().min(1, { message: 'Company is required.' }),
    role: z.string().min(1, { message: 'Role is required.' }),
    avatar_url: z.string().optional(),
    password: z.string().min(6, { message: 'Minimum 6 characters' })
      .refine((value) => /[a-z]/.test(value), {
        message: 'Must have a lowercase letter.'
      })
      .refine((value) => /[A-Z]/.test(value), {
        message: 'Must have an uppercase letter.'
      })
      .refine((value) => /[0-9]/.test(value), {
        message: 'Must have a number.'
      })
      .refine((value) => /[!@#$%^&*]/.test(value), {
        message: 'Must have a special character.'
      }),
    password_confirmation: z.string().min(1, { message: 'Password Confirmation is required.' })
      .refine((value) => form.value.password === value, {
        message: 'Passwords do not match'
      }),
  })
    .refine((data) => data.password === data.password_confirmation, {
      message: 'Passwords do not match',
      path: ['password_confirmation'],
    })
));

watch(() => props.companies, (newCompanies) => {
  localCompaniesList.value = [...newCompanies];
}, { immediate: true, deep: true });

// Watch for changes in the user prop to populate the form for editing
watch(() => props.user, (newUser) => {
  if (props.isEdit && newUser) {
    form.value = { ...newUser }; // Assuming company is an object
    if (newUser?.company && newUser?.company?.id) {
      form.value.company = newUser?.company;
    }
  } else {
    form.value = {
      first_name: '',
      last_name: '',
      email: '',
      company: null,
      role: '',
      avatar_url: '',
    };
  }
}, { immediate: true });

watch(() => form.value.company, () => {
  if (form.value.company && form.value.company.role) {
    form.value.role = form.value.company.role;
  }
});

const searchCompanies = (event) => {
  eventQuery.value = event.query;
  setTimeout(() => {
    if (!event.query.trim().length) {
      filteredCompanies.value = [...localCompaniesList.value];
    } else {
      const queryWords = event.query.toLowerCase().split(/\s+/);
      filteredCompanies.value = localCompaniesList.value.filter((company) => {
        const companyName = company.name.toLowerCase();
        const role = company.role?.toLowerCase() || '';
        return queryWords.every((word) => companyName.includes(word) || role.includes(word));
      });
    }
  }, 250);
}

const highlightMatch = (text) => {
  const queryWords = eventQuery.value.toLowerCase().split(/\s+/);
  let highlightedText = text;
  queryWords.forEach((word) => {
    if (word.trim()) {
      const regex = new RegExp(`(${word})`, 'gi');
      highlightedText = highlightedText.replace(regex, '<b>$1</b>');
    }
  });
  return highlightedText;
}

const handleSubmit = async ({ valid, values }) => {
  if (valid) {
    try {
      if (props.isEdit) {
        // Update user
        const updateUser = {
          user_id: props.user.id,
          first_name: form.value.first_name,
          last_name: form.value.last_name,
          email: form.value.email,
          company: form.value?.company?.id || null,
          role: form.value.role,
          avatar_url: form.value.avatar_url,
        }

        if (form.value.password && form.value.password_confirmation && form.value.password === form.value.password_confirmation) {
          updateUser.password = form.value.password;
        }

        const { data, error } = await supabase
          .functions.invoke('update-user', {
            body: updateUser,
          });

        if (error) throw error;

        toast.add({
          severity: 'success',
          summary: 'Success',
          detail: 'User updated successfully',
          life: 3000,
        });
        emit('saved');
      } else {
        // Create new user
        const { data, error } = await supabase
          .functions.invoke('create-user', {
            body: {
              first_name: form.value.first_name,
              last_name: form.value.last_name,
              email: form.value.email,
              role: form.value.role,
              company: form.value?.company?.id || null,
              avatar_url: form.value.avatar_url,
              password: form.value.password,
            }
          });

        if (error) throw error;

        toast.add({
          severity: 'success',
          summary: 'Success',
          detail: 'User created successfully',
          life: 3000,
        });
        emit('saved');
      }
    } catch (error) {
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
};
</script>

<style scoped>
/* Add any additional styles here */
</style>
