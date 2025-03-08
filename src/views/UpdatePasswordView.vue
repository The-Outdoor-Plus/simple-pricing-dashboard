<template>
  <div class="card flex flex-col items-center justify-center w-12/12 lg:w-6/12 mx-auto mt-40">
    <img v-if="projectDivision === 'The Outdoor Plus'" :src="logoUrl" class="w-11/12 lg:w-10/12 mb-16">
    <img v-if="projectDivision === 'Videl USA'" :src="logoUrlVidel" class="w-4/12 lg:w-5/12 mb-16">

    <!-- Password Reset Form -->
    <Form v-if="!isFirstTimeLogin" v-slot="$form" :resolver="resetResolver" @submit="onResetSubmit"
      class="flex flex-col gap-4 w-full items-center">
      <div class="flex flex-col gap-1 w-11/12 lg:w-9/12">
        <InputText name="email" type="text" placeholder="Email" fluid />
        <Message v-if="$form.email?.invalid" severity="error" size="small" variant="simple">
          {{ $form.email.error?.message }}
        </Message>
      </div>
      <Button type="submit" label="Send Reset Link"
        class="w-6/12 !bg-blue-600 hover:!bg-blue-400 !border-none"></Button>
    </Form>

    <!-- First Time Login Password Update Form -->
    <Form v-else v-slot="$form" :resolver="passwordResolver" @submit="onPasswordSubmit"
      class="flex flex-col gap-4 w-full items-center">
      <div class="flex flex-col gap-1 w-11/12 lg:w-9/12 mb-3">
        <label for="otp" class="block">Enter the 6-digit code sent to your email</label>
        <InputOtp v-model="form.otp" name="otp" fluid :length="6" class="w-full justify-center" />
        <template v-if="$form.otp?.invalid">
          <Message v-for="(error, index) in $form.otp.errors" :key="index" severity="error" size="small"
            variant="simple">{{
              error.message }}</Message>
        </template>
      </div>
      <div class="flex flex-col gap-1 w-11/12 lg:w-9/12">
        <label for="password" class="block">Enter your new password</label>
        <Password v-model="form.password" name="password" placeholder="New Password" fluid :toggle-mask="true" />
        <template v-if="$form.password?.invalid">
          <Message v-for="(error, index) in $form.password.errors" :key="index" severity="error" size="small"
            variant="simple">{{ error.message }}</Message>
        </template>
      </div>
      <div class="flex flex-col gap-1 w-11/12 lg:w-9/12">
        <label for="password_confirmation" class="block">Confirm your new password</label>
        <Password v-model="form.password_confirmation" name="password_confirmation" placeholder="Confirm Password" fluid
          :toggle-mask="true" :feedback="false" />
        <template v-if="$form.password_confirmation?.invalid">
          <Message v-for="(error, index) in $form.password_confirmation.errors" :key="index" severity="error"
            size="small" variant="simple">{{ error.message }}</Message>
        </template>
      </div>
      <Button type="submit" label="Update Password"
        class="w-6/12 !bg-blue-600 hover:!bg-blue-400 !border-none"></Button>
    </Form>
  </div>
</template>

<script setup>
import { ref, onMounted, inject, onBeforeUnmount, onBeforeMount } from 'vue';
import { useRoute, useRouter } from 'vue-router';
import { supabase } from '@/supabase';
import { useToast } from 'primevue/usetoast';
import { zodResolver } from '@primevue/forms/resolvers/zod';
import { z } from 'zod';
import logoUrl from '@/assets/top_logo.svg';
import logoUrlVidel from '@/assets/videl_logo.png';
import { useUserStore } from '@/store/user';
import { useAppStore } from '@/store/app';

const route = useRoute();
const router = useRouter();
const toast = useToast();
const userStore = useUserStore();
const appStore = useAppStore();
const projectDivision = inject('projectDivision');
const isFirstTimeLogin = ref(false);
const userEmail = ref('');

const form = ref({
  password: '',
  password_confirmation: '',
  otp: '',
});

// Password validation schema
const passwordSchema = z.object({
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
      message: 'Passwords do not match',
    }),
  otp: z.string().min(1, { message: 'OTP is required.' }),
});

// Reset password resolver
const resetResolver = ref(zodResolver(
  z.object({
    email: z.string().min(1, { message: 'Email is required.' }).email({ message: 'Invalid email address' }),
  })
));

// Password update resolver
const passwordResolver = ref(zodResolver(
  z.object({
    password: passwordSchema.shape.password,
    password_confirmation: passwordSchema.shape.password_confirmation,
    otp: passwordSchema.shape.otp,
  }).refine((data) => data.password === data.password_confirmation, {
    message: 'Passwords do not match',
    path: ['password_confirmation'],
  })
));

onMounted(async () => {
  // Check if this is a first-time login
  const firstTime = route.query.first_time === 'true';
  const email = route.query.email;

  if (firstTime && email) {
    isFirstTimeLogin.value = true;
    userEmail.value = email;
  }
});

const onResetSubmit = async ({ valid, values }) => {
  if (valid) {
    try {
      appStore.setLoading(true);
      const { error } = await supabase.auth.resetPasswordForEmail(values.email, {
        redirectTo: `${window.location.origin}/update-password`,
      });
      if (error) throw error;

      toast.add({
        severity: 'success',
        summary: 'Success',
        detail: 'Password reset link has been sent to your email',
        life: 5000
      });
    } catch (error) {
      toast.add({
        severity: 'error',
        summary: 'Error',
        detail: error.message || 'An error occurred while sending reset link',
        life: 5000
      });
    } finally {
      appStore.setLoading(false);
    }
  }
};

const onPasswordSubmit = async ({ valid, values }) => {
  if (valid) {
    try {
      appStore.setLoading(true);
      const { error } = await supabase.auth.updateUser({
        password: values.password,
        data: {
          first_time: false,
        },
        nonce: form.value.otp,
      });

      const { error: updateError } = await supabase.from('users').update({
        first_time: false,
      }).eq('email', userEmail.value);

      if (error) throw error;
      if (updateError) throw updateError;

      // If this was a first-time login, log out and redirect to login
      if (isFirstTimeLogin.value) {
        await userStore.logout();
        router.push({
          path: '/login',
          query: { from: 'update-password', first_time: true }
        });
        toast.add({
          severity: 'success',
          summary: 'Success',
          detail: 'Password updated successfully. Please login with your new password.',
          life: 5000
        });
      } else {
        toast.add({
          severity: 'success',
          summary: 'Success',
          detail: 'Password updated successfully',
          life: 5000
        });
        router.push('/');
      }
    } catch (error) {
      toast.add({
        severity: 'error',
        summary: 'Error',
        detail: error.message || 'An error occurred while updating password',
        life: 5000
      });
    } finally {
      appStore.setLoading(false);
    }
  }
};

const beforeUnloudHandler = (event) => {
  if (isFirstTimeLogin.value && userEmail.value) {
    event.preventDefault();
    event.returnValue = '';
  }
}

onMounted(() => {
  window.addEventListener('beforeunload', beforeUnloudHandler);
});

onBeforeUnmount(() => {
  window.removeEventListener('beforeunload', beforeUnloudHandler);
});

</script>
