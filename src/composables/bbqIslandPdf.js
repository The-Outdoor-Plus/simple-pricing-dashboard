import html2pdf from 'html2pdf.js';
import { useToast } from 'primevue/usetoast';

export function useBbqIslandPdf() {
  const toast = useToast();

  /**
   * Generates a PDF from the BBQ Island Configurator quote summary and island preview
   * @param {Object} options - Options for PDF generation
   * @param {string} options.quoteSummarySelector - CSS selector for the quote summary element
   * @param {string} options.islandPreviewSelector - CSS selector for the island preview element
   * @param {string} options.disclaimerText - Disclaimer text to include in the PDF
   * @param {string} options.filename - Filename for the PDF (without extension)
   * @returns {Promise<string>} - Promise that resolves to the PDF data URI
   */
  const generateBbqIslandPdf = async ({
    quoteSummarySelector = '.quote-summary',
    islandPreviewSelector = '.island-preview-container',
    disclaimerText = '',
    filename = 'BBQ-Island-Quote',
  } = {}) => {
    try {
      // Get the elements
      const quoteSummaryElement = document.querySelector(quoteSummarySelector);
      const islandPreviewElement = document.querySelector(islandPreviewSelector);

      if (!quoteSummaryElement) {
        throw new Error('Quote summary element not found');
      }

      if (!islandPreviewElement) {
        throw new Error('Island preview element not found');
      }

      // Create a container for the PDF content
      const pdfContainer = document.createElement('div');
      pdfContainer.style.width = '794px'; // A4 width in pixels
      pdfContainer.style.padding = '40px';
      pdfContainer.style.backgroundColor = 'white';
      pdfContainer.style.position = 'absolute';
      pdfContainer.style.left = '-9999px';
      pdfContainer.style.top = '-9999px';
      document.body.appendChild(pdfContainer);

      // Clone the quote summary and island preview elements
      const quoteSummaryClone = quoteSummaryElement.cloneNode(true);
      const islandPreviewClone = islandPreviewElement.cloneNode(true);

      // Add a title to the PDF
      const titleElement = document.createElement('h1');
      titleElement.textContent = 'BBQ Island Configurator Quote';
      titleElement.style.fontSize = '24px';
      titleElement.style.marginBottom = '20px';
      titleElement.style.textAlign = 'center';
      titleElement.style.fontFamily = 'Arial, sans-serif';
      pdfContainer.appendChild(titleElement);

      // Add the quote summary to the PDF container
      pdfContainer.appendChild(quoteSummaryClone);

      // Add a page break
      const pageBreak = document.createElement('div');
      pageBreak.style.pageBreakAfter = 'always';
      pageBreak.style.height = '20px';
      pdfContainer.appendChild(pageBreak);

      // Add a title for the island preview
      const previewTitleElement = document.createElement('h2');
      previewTitleElement.textContent = 'Island Preview';
      previewTitleElement.style.fontSize = '20px';
      previewTitleElement.style.marginTop = '20px';
      previewTitleElement.style.marginBottom = '20px';
      previewTitleElement.style.fontFamily = 'Arial, sans-serif';
      pdfContainer.appendChild(previewTitleElement);

      // Add the island preview to the PDF container
      const islandPreviewWrapper = document.createElement('div');
      islandPreviewWrapper.style.width = '100%';
      islandPreviewWrapper.style.marginTop = '20px';
      islandPreviewWrapper.style.marginBottom = '20px';
      islandPreviewWrapper.style.textAlign = 'center';

      // Create a clone of the island preview that only includes the preview sections
      const topSection = islandPreviewElement.querySelector(
        '.border-4.border-gray-300:nth-child(1)',
      );
      const bottomSection = islandPreviewElement.querySelector(
        '.border-4.border-gray-300:nth-child(2)',
      );

      if (topSection) {
        const topSectionClone = topSection.cloneNode(true);
        topSectionClone.style.margin = '0 auto 20px auto';
        islandPreviewWrapper.appendChild(topSectionClone);
      }

      if (bottomSection) {
        const bottomSectionClone = bottomSection.cloneNode(true);
        bottomSectionClone.style.margin = '0 auto';
        islandPreviewWrapper.appendChild(bottomSectionClone);
      }

      // Add a scale indicator
      const scaleElement = document.createElement('div');
      scaleElement.textContent = `Scale: ${islandPreviewElement.querySelector('.text-sm.text-gray-600')?.textContent || ''}`;
      scaleElement.style.marginTop = '10px';
      scaleElement.style.textAlign = 'center';
      scaleElement.style.fontSize = '12px';
      scaleElement.style.fontFamily = 'Arial, sans-serif';
      islandPreviewWrapper.appendChild(scaleElement);

      pdfContainer.appendChild(islandPreviewWrapper);

      // Add the disclaimer if provided
      if (disclaimerText) {
        const disclaimerElement = document.createElement('div');
        disclaimerElement.style.marginTop = '30px';
        disclaimerElement.style.padding = '15px';
        disclaimerElement.style.border = '1px solid #ddd';
        disclaimerElement.style.borderRadius = '5px';
        disclaimerElement.style.backgroundColor = '#f9f9f9';
        disclaimerElement.style.fontSize = '12px';
        disclaimerElement.style.fontFamily = 'Arial, sans-serif';
        disclaimerElement.style.color = '#666';
        disclaimerElement.innerHTML = `<strong>Disclaimer:</strong> ${disclaimerText}`;
        pdfContainer.appendChild(disclaimerElement);
      }

      // Configure PDF options
      const opt = {
        margin: [15, 15, 15, 15],
        filename: `${filename}.pdf`,
        image: { type: 'png', quality: 0.98 },
        html2canvas: {
          scale: 2,
          useCORS: true,
          letterRendering: true,
          width: 794, // A4 width in pixels
          windowWidth: 794,
        },
        jsPDF: {
          unit: 'mm',
          format: 'a4',
          orientation: 'portrait',
          compress: true,
        },
      };

      // Generate the PDF
      const pdfResult = await html2pdf().from(pdfContainer).set(opt).outputPdf('datauristring');

      // Clean up
      document.body.removeChild(pdfContainer);

      return pdfResult;
    } catch (error) {
      console.error('Error generating BBQ Island PDF:', error);
      toast.add({
        severity: 'error',
        summary: 'Error',
        detail: `Failed to generate PDF: ${error.message}`,
        life: 3000,
      });
      throw error;
    }
  };

  /**
   * Downloads the BBQ Island Configurator PDF
   */
  const downloadBbqIslandPdf = async (options = {}) => {
    try {
      const pdfDataUri = await generateBbqIslandPdf(options);

      // Create a link element and trigger download
      const link = document.createElement('a');
      link.href = pdfDataUri;
      link.download = `${options.filename || 'BBQ-Island-Quote'}.pdf`;
      link.click();

      toast.add({
        severity: 'success',
        summary: 'Success',
        detail: 'PDF downloaded successfully',
        life: 3000,
      });
    } catch (error) {
      console.error('Error downloading BBQ Island PDF:', error);
      // Error is already handled in generateBbqIslandPdf
    }
  };

  return {
    generateBbqIslandPdf,
    downloadBbqIslandPdf,
  };
}
