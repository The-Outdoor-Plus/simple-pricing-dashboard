import { useUserStore } from '@/store/user';

const userStore = useUserStore();

export function useFile() {
  const uploadFileToS3 = async (formData) => {
    try {
      const response = await fetch(`${import.meta.env.VITE_AWSMIDDLEWARE_URL}/upload-to-s3`, {
        method: 'POST',
        body: formData,
        headers: {
          Authorization: `Bearer ${userStore?.session?.access_token}`,
        },
      });

      if (!response.ok) {
        throw new Error('Failed to upload file');
      }

      const data = await response.json();

      if (!data && !data.fileUrl) {
        throw new Error('Failed to upload file');
      }

      return data.fileUrl;
    } catch (error) {
      console.error(error);
    }
  };

  const deleteFileFromS3WithCloudFrontUrl = async (cloudFrontUrl) => {
    console.log('cloudFrontUrl', cloudFrontUrl);
    try {
      const response = await fetch(`${import.meta.env.VITE_AWSMIDDLEWARE_URL}/delete-from-s3`, {
        method: 'PUT',
        body: JSON.stringify({
          fileUrl: cloudFrontUrl,
        }),
        headers: {
          'Content-Type': 'application/json',
          Authorization: `Bearer ${userStore?.session?.access_token}`,
        },
      });

      if (!response.ok) {
        throw new Error('Failed to delete file');
      }
    } catch (error) {
      console.error(error);
    }
  };

  const getSignedUrl = async (fileUrl) => {
    const fileKey = fileUrl.trim().replace(import.meta.env.VITE_CLOUDFRONT_DOMAIN.trim(), '');
    const searchParams = new URLSearchParams();
    searchParams.set('fileKey', fileKey);
    const response = await fetch(
      `${import.meta.env.VITE_AWSMIDDLEWARE_URL}/get-signed-url/?${searchParams.toString()}`,
      {
        method: 'GET',
        headers: {
          Authorization: `Bearer ${userStore?.session?.access_token}`,
        },
      },
    );

    if (!response.ok) {
      throw new Error('Failed to get signed url');
    }

    const data = await response.json();
    return data.signedUrl;
  };

  return {
    uploadFileToS3,
    deleteFileFromS3WithCloudFrontUrl,
    getSignedUrl,
  };
}
