<template>
  <div class="space-y-4">
    <div v-if="!updates?.length" class="text-center text-gray-500 p-4 bg-gray-50 rounded-lg">
      No activities yet
    </div>

    <div v-else class="space-y-4">
      <div v-for="update in sortedUpdates" :key="update.update_id"
        class="flex items-start gap-4 p-4 bg-gray-50 rounded-lg">
        <Avatar v-if="!update.avatar" :label="update.user_initials" shape="circle" class="!bg-orange-200"
          size="large" />
        <Avatar v-else :image="update.avatar" shape="circle" class="bg-orange-200" size="large" />

        <div class="flex-1 min-w-0">
          <div class="flex items-center justify-between gap-2 w-full">
            <span class="font-medium">{{ update.user_name }}</span>
            <span class="inline-flex items-center px-2 py-1 text-xs rounded-full self-end"
              :class="getTypeStyles(update.user_type)">
              {{ update.user_type }}
            </span>
          </div>
          <p class="text-sm text-gray-500 mb-5">
            {{ formatDate(update.created_at) }}
          </p>

          <div class="text-gray-600 mt-1">
            <ul class="list-disc ml-4">
              <li v-html="update.action_text"></li>
            </ul>
          </div>

        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
import { computed } from 'vue';
import Avatar from 'primevue/avatar';

const props = defineProps({
  updates: {
    type: Array,
    default: () => []
  }
});

const sortedUpdates = computed(() => {
  if (!props.updates) return [];
  return [...props.updates].sort((a, b) =>
    new Date(b.created_at) - new Date(a.created_at)
  );
});

const getTypeStyles = (type) => {
  const styles = {
    'AGENT': 'bg-blue-100 text-blue-800',
    'CUSTOMER': 'bg-green-100 text-green-800',
    'SYSTEM': 'bg-gray-100 text-gray-800'
  };
  return styles[type] || 'bg-gray-100 text-gray-800';
};

const formatDate = (date) => {
  const now = new Date();
  const updateDate = new Date(date);
  const diffInHours = Math.floor((now - updateDate) / (1000 * 60 * 60));
  const diffInDays = Math.floor(diffInHours / 24);

  // Format the actual date and time
  const formattedDateTime = updateDate.toLocaleString('en-US', {
    year: 'numeric',
    month: '2-digit',
    day: '2-digit',
    hour: '2-digit',
    minute: '2-digit',
    hour12: true
  });

  let relativeTime;
  if (diffInHours < 24) {
    if (diffInHours === 0) {
      const diffInMinutes = Math.floor((now - updateDate) / (1000 * 60));
      relativeTime = `${diffInMinutes} minute${diffInMinutes !== 1 ? 's' : ''} ago`;
    } else {
      relativeTime = `${diffInHours} hour${diffInHours !== 1 ? 's' : ''} ago`;
    }
  } else {
    relativeTime = `${diffInDays} day${diffInDays !== 1 ? 's' : ''} ago`;
  }

  return `${relativeTime} (${formattedDateTime})`;
};
</script>
