<template>
  <Drawer v-model:visible="isVisible" :breakpoint="960" position="right" class="w-full !w-[30rem]">
    <template #header>
      <div class="flex items-center gap-2">
        <i class="pi pi-comments"></i>
        <h2 class="text-xl font-semibold">Comments</h2>
      </div>
    </template>

    <div class="flex flex-col h-full">
      <!-- Comments List -->
      <div class="flex-1 overflow-y-auto">
        <div v-if="!comments?.length" class="text-center text-gray-500 mt-4">
          No comments yet
        </div>
        <div v-else class="space-y-4 p-4">
          <div v-for="comment in sortedComments" :key="comment.comment_id"
            class="rounded-lg p-4 space-y-2 mb-4 flex flex-col"
            :class="comment.user_type === 'CUSTOMER' ? 'items-start bg-gray-50' : 'items-end bg-blue-100/60'">
            <div class="flex items-center gap-2"
              :class="comment.user_type === 'CUSTOMER' ? 'justify-start' : 'justify-end'">
              <template v-if="comment.user_type === 'CUSTOMER'">
                <Avatar v-if="!comment.avatar" :label="comment.user_initials" shape="circle" class="bg-orange-200" />
                <Avatar v-else :image="comment.avatar" shape="circle" class="bg-orange-200" />
              </template>
              <div>
                <p class="font-medium" :class="comment.user_type === 'CUSTOMER' ? 'text-start' : 'text-end'">
                  {{ comment.user_name }}
                </p>
                <p class="text-sm text-gray-500" :class="comment.user_type === 'CUSTOMER' ? 'text-start' : 'text-end'">
                  {{ new Date(comment.created_at).toLocaleDateString() }}, {{ new
                    Date(comment.created_at).toLocaleTimeString([], {
                      hour: '2-digit', minute: '2-digit', minute:
                        '2-digit'
                    })
                  }}
                </p>
              </div>
              <template v-if="comment.user_type === 'AGENT'">
                <Avatar v-if="!comment.avatar" :label="comment.user_initials" shape="circle" class="!bg-orange-200" />
                <Avatar v-else :image="comment.avatar" shape="circle" class="bg-orange-200" />
              </template>
            </div>
            <div class="ml-10" :class="comment.user_type === 'CUSTOMER' ? 'text-start ml-10' : 'text-end mr-10'">
              <span class="inline-block px-2 py-1 text-xs rounded-full bg-primary/10 text-primary mb-2">
                {{ comment.comment_type }}
              </span>
              <p class="text-gray-700">{{ comment.comment }}</p>
            </div>
          </div>
        </div>
      </div>

      <!-- New Comment Form -->
      <div class="border-t p-4 space-y-4">
        <Dropdown v-model="newComment.comment_type" :options="commentTypes" placeholder="Select comment type"
          class="w-full" />
        <Textarea v-model="newComment.comment" placeholder="Write your comment..." rows="3" class="w-full" />
        <Button label="Publish" icon="pi pi-send" @click="addComment" :loading="publishing"
          :disabled="!newComment.comment" class="w-full"
          :class="!newComment.comment ? 'hover:cursor-not-allowed' : 'hover:cursor-pointer'" />
      </div>
    </div>
  </Drawer>
</template>

<script setup>
import { ref, computed, watch } from 'vue';
import { useUserStore } from '@/store/user';
import { supabase } from '@/supabase';
import { useToast } from 'primevue/usetoast';
import { useUser } from '@/composables/user';
import Avatar from 'primevue/avatar';
import Drawer from 'primevue/drawer';
import Textarea from 'primevue/textarea';

const props = defineProps({
  modelValue: {
    type: Boolean,
    required: true
  },
  rfqId: {
    type: String,
    required: true
  },
  comments: {
    type: Array,
    default: () => []
  },
  publishing: {
    type: Boolean,
    required: true,
  },
  commentPublished: {
    type: Boolean,
    required: true,
  },
});

const emit = defineEmits(['update:modelValue', 'comment-added', 'update:commentPublished']);

// Add computed property for drawer visibility
const isVisible = computed({
  get: () => props.modelValue,
  set: (value) => emit('update:modelValue', value)
});

const { loadUserInformation } = useUser();
const userStore = useUserStore();
const toast = useToast();
const newComment = ref({
  comment: '',
  comment_type: 'General Comment'
});

const commentTypes = [
  'General Comment',
  'Missing Information',
  'Request For Clarification',
  'Update'
];

const sortedComments = computed(() => {
  if (!props.comments) return [];
  return [...props.comments].sort((a, b) =>
    new Date(b.created_at) - new Date(a.created_at)
  );
});

const addComment = async () => {
  if (!newComment.value.comment || !newComment.value.comment_type) return;

  try {
    const comment = {
      comment_id: crypto.randomUUID(),
      user_id: userStore.currentUser.id,
      user_name: `${userStore.currentUser.first_name} ${userStore.currentUser.last_name}`,
      user_initials: `${userStore.currentUser.first_name.charAt(0)}${userStore.currentUser.last_name.charAt(0)}`,
      avatar: userStore.currentUser.avatar_url,
      comment: newComment.value.comment,
      comment_type: newComment.value.comment_type,
      created_at: new Date().toISOString(),
      user_type: userStore.isAgent ? 'AGENT' : 'CUSTOMER'
    };

    // Emit event to update parent
    emit('comment-added', comment);
  } catch (error) {
    console.error('Error adding comment:', error);
  }
};

watch(() => props.commentPublished, (newVal) => {
  if (!!props.commentPublished) {
    newComment.value = {
      comment: 'General Comment',
      comment_type: null
    };
    emit('update:commentPublished', false);
  }
}, { deep: true, immediate: true });
</script>
