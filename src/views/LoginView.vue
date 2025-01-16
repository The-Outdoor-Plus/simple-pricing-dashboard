<template>
  <div class="card flex flex-col items-center justify-center w-6/12 mx-auto mt-40">
    <img :src="logoUrl" class="w-9/12 mb-16">
    <Form v-slot="$form" :resolver="resolver" :initial-values="initialValues" @submit="onFormSubmit"
      class="flex flex-col gap-4 w-full items-center">
      <div class="flex flex-col gap-1 w-9/12">
        <InputText name="email" type="text" placeholder="Email" fluid />
        <Message v-if="$form.email?.invalid" severity="error" size="small" variant="simple">{{
          $form.email.error?.message }}</Message>
      </div>
      <div class="flex flex-col gap-1 w-9/12">
        <Password name="password" placeholder="Password" fluid :toggle-mask="true" :feedback="false" />
        <template v-if="$form.password?.invalid">
          <Message v-for="(error, index) in $form.password.errors" :key="index" severity="error" size="small"
            variant="simple">{{
              error.message }}</Message>
        </template>

      </div>
      <Button type="submit" label="Login" class="w-6/12 !bg-blue-600 hover:!bg-blue-400 !border-none"></Button>
    </Form>
  </div>
</template>

<script setup>
import { ref } from 'vue';
import { supabase } from '@/supabase';
import { useUserStore } from '@/store/user';
import { useRouter, useRoute } from 'vue-router';
import logoUrl from '@/assets/top_logo.svg';

import { zodResolver } from '@primevue/forms/resolvers/zod';
import { useToast } from 'primevue/usetoast';
import { z } from 'zod';

const toast = useToast();
const initialValues = ref({
  email: '',
  password: '',
});

const userStore = useUserStore();
const router = useRouter();
const route = useRoute();

const isLoading = ref(false);

const resolver = ref(zodResolver(
  z.object({
    email: z.string().min(1, { message: 'Email is required.' }).email({ message: 'Invalid email address' }),
    password: z.string().min(4, { message: 'Minimum 5 characters' })
      .refine((value) => /[a-z]/.test(value), {
        message: 'Must have a lowercase letter.'
      })
      .refine((value) => /[A-Z]/.test(value), {
        message: 'Must have an uppercase letter.'
      })
    // .refine((value) => /d/.test(value), {
    //   message: 'Must have a number.'
    // })
  })
));

const onFormSubmit = async ({ valid, values }) => {
  if (valid) {
    try {
      isLoading.value = true;
      const form = JSON.parse(JSON.stringify(values));
      const { data, error } = await supabase.auth.signInWithPassword(form);
      if (error) throw error;
      await userStore.sucessfullLogin(data.user, data.session);
      await userStore.loadUserCompany();
      toast.add({ severity: 'success', summary: 'Success', detail: 'Login successful', life: 5000 });
      if (route?.query?.redirect) router.push(`${route.query.redirect}`);
      else router.push('/');
    } catch (e) {
      toast.add({ severity: 'error', summary: 'Error singing in', detail: e?.message || 'An error ocurred trying to sign in. Please contact TOP Support.', life: 5000 });
      console.error(e);
    } finally {
      isLoading.value = false;
    }
  }
}

</script>
