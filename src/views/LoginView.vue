<template>
  <div class="card flex flex-col items-center justify-center w-12/12 lg:w-6/12 mx-auto mt-40">
    <img v-if="projectDivision === 'The Outdoor Plus'" :src="logoUrl" class="w-11/12 lg:w-10/12 mb-16">
    <img v-if="projectDivision === 'Videl USA'" :src="logoUrlVidel" class="w-4/12 lg:w-5/12 mb-16">
    <Form v-show="!isOtpSent || !areCredentialsValid" v-slot="$form" :resolver="resolver"
      :initial-values="initialValues" @submit="onFormSubmit" class="flex flex-col gap-4 w-full items-center">
      <div class="flex flex-col gap-1 w-11/12 lg:w-9/12">
        <InputText name="email" type="text" placeholder="Email" fluid />
        <Message v-if="$form.email?.invalid" severity="error" size="small" variant="simple">{{
          $form.email.error?.message }}</Message>
      </div>
      <div class="flex flex-col gap-1 w-11/12 lg:w-9/12">
        <Password name="password" placeholder="Password" fluid :toggle-mask="true" :feedback="false" />
        <template v-if="$form.password?.invalid">
          <Message v-for="(error, index) in $form.password.errors" :key="index" severity="error" size="small"
            variant="simple">{{
              error.message }}</Message>
        </template>
      </div>

      <Button type="submit" label="Login" class="w-6/12 !bg-blue-600 hover:!bg-blue-400 !border-none"></Button>
    </Form>
    <Form v-if="isOtpSent && areCredentialsValid" v-slot="$otpForm" :resolver="otpResolver"
      :initial-values="initialOtpValues" @submit="onOtpSubmit" class="flex flex-col gap-4 w-full items-center">
      <div class="flex flex-col gap-1 w-11/12 lg:w-9/12">
        <InputText v-model="userEmail" name="email" type="text" placeholder="Email" fluid />
        <Message v-if="$otpForm.email?.invalid" severity="error" size="small" variant="simple">{{
          $otpForm.email.error?.message }}</Message>
      </div>
      <div class="flex flex-col gap-1 w-11/12 lg:w-9/12">
        <label for="otp" class="block">Enter the 6-digit code sent to your email</label>
        <InputOtp v-model="otpCode" name="otp" fluid :length="6" class="w-full justify-center" />
        <template v-if="$otpForm.otp?.invalid">
          <Message v-for="(error, index) in $otpForm.otp.errors" :key="index" severity="error" size="small"
            variant="simple">{{
              error.message }}</Message>
        </template>
      </div>
      <Button :disabled="$otpForm.otp?.invalid" type="submit" label="Login"
        class="w-6/12 !bg-blue-600 hover:!bg-blue-400 !border-none"></Button>
    </Form>
  </div>
</template>

<script setup>
import { ref, inject } from 'vue';
import { supabase } from '@/supabase';
import { useUserStore } from '@/store/user';
import { useUser } from '@/composables/user';
import { useAppStore } from '@/store/app';
import { useRouter, useRoute } from 'vue-router';
import logoUrl from '@/assets/top_logo.svg';
import logoUrlVidel from '@/assets/videl_logo.png';

import { zodResolver } from '@primevue/forms/resolvers/zod';
import { useToast } from 'primevue/usetoast';
import { z } from 'zod';

const projectDivision = inject('projectDivision');

const toast = useToast();
const initialValues = ref({
  email: '',
  password: '',
});

const initialOtpValues = ref({
  email: '',
  otp: '',
});

const otpCode = ref('');
const userEmail = ref('');
const appStore = useAppStore();
const userStore = useUserStore();
const router = useRouter();
const route = useRoute();
const {
  allowedDomains,
  verifyOtp,
  sendOtp,
  verifyCredentials,
} = useUser();


const isLoading = ref(false);
const areCredentialsValid = ref(false);
const isOtpSent = ref(false);

const resolver = ref(zodResolver(
  z.object({
    email: z.string().min(1, { message: 'Email is required.' }).email({ message: 'Invalid email address' }),
    password: z.string().min(4, { message: 'Minimum 5 characters' })
      .refine((value) => /[a-z]/.test(value), {
        message: 'Must have a lowercase letter.'
      })
      .refine((value) => /[A-Z]/.test(value), {
        message: 'Must have an uppercase letter.'
      }),
    // .refine((value) => /d/.test(value), {
    //   message: 'Must have a number.'
    // })
  })
));

const otpResolver = ref(zodResolver(
  z.object({
    email: z.string().min(1, { message: 'Email is required.' }).email({ message: 'Invalid email address' }),
    otp: z.string().min(1, { message: 'OTP is required.' }),
  })
));

const onFormSubmit = async ({ valid, values }) => {
  if (valid) {
    try {
      appStore.setLoading(true);
      const form = JSON.parse(JSON.stringify(values));

      const {
        success: credentialsValid,
        first_time,
        email_otp_active,
        division_sent,
      } = await verifyCredentials(form.email, form.password, projectDivision);

      if (credentialsValid) {
        const { data, error } = await supabase.auth.signInWithPassword(form);
        if (error) throw error;
        await userStore.sucessfullLogin(data.user, data.session);
        if (data.user.user_metadata.first_time && first_time) {
          await supabase.auth.reauthenticate();
          localStorage.setItem('reauthentication', Date.now());
          toast.add({ severity: 'success', summary: 'OTP Sent!', detail: 'Please check your email for the OTP for your password reset.', life: 5000 });
          router.push({ path: '/update-password', query: { email: form.email, first_time: true } });
        } else {
          if (data.user.user_metadata.email_otp_active && email_otp_active) {
            await sendOtp(form.email);
            toast.add({ severity: 'success', summary: 'OTP Sent!', detail: 'Please check your email for the OTP', life: 5000 });
            initialOtpValues.value.email = form.email;
            userEmail.value = form.email;
            isOtpSent.value = true;
          } else {
            await userStore.loadUserCompany();
            toast.add({ severity: 'success', summary: 'Success', detail: 'Login successful', life: 5000 });
            if (route?.query?.redirect) router.replace(`${route.query.redirect}`);
            else router.replace('/');
          }
        }
      } else {
        toast.add({ severity: 'error', summary: 'Error singing in', detail: division_sent === false ? 'Error verifying division access.' : 'Invalid credentials', life: 5000 });
      }
    } catch (e) {
      await supabase.auth.signOut();
      console.log(e);
      toast.add({ severity: 'error', summary: e?.message || 'Error singing in', detail: e?.cause || 'An error ocurred trying to sign in. Please contact TOP Support.', life: 5000 });
      console.error(e);
    } finally {
      appStore.setLoading(false);
    }
  }
}

const onOtpSubmit = async ({ valid, values }) => {
  if (valid && otpCode.value.length === 6) {
    try {
      appStore.setLoading(true);
      values.otp = otpCode.value;
      values.email = userEmail.value;
      const form = JSON.parse(JSON.stringify(values));
      const otpValid = await verifyOtp(form.email, form.otp);
      if (otpValid) {
        await userStore.sucessfullLogin(otpValid.user, otpValid.session);
        await userStore.loadUserCompany();
        toast.add({ severity: 'success', summary: 'Success', detail: 'Login successful', life: 5000 });
        if (route?.query?.redirect) router.replace(`${route.query.redirect}`);
        else router.replace('/');
      } else {
        toast.add({ severity: 'error', summary: 'Error singing in', detail: 'Invalid OTP', life: 5000 });
      }
    } catch (e) {
      toast.add({ severity: 'error', summary: 'Error singing in', detail: e?.message || 'An error ocurred trying to sign in. Please contact TOP Support.', life: 5000 });
      console.error(e);
    } finally {
      appStore.setLoading(false);
    }
  }
}

</script>
