import { corsHeaders } from "../_shared/cors.ts";
import { prepareVirtualFile } from "https://deno.land/x/mock_file@v1.1.2/mod.ts";
import nodemailer from "npm:nodemailer";
import { SESClient } from "npm:@aws-sdk/client-ses";
import aws from "npm:@aws-sdk/client-ses";

Deno.serve(async (req) => {
  if (req.method === "OPTIONS") {
    return new Response("ok", { headers: { ...corsHeaders } });
  }

  prepareVirtualFile("./aws/config");
  prepareVirtualFile("./aws/credentials");

  if (req.method === "POST") {
    let sesClient = null;
    if (Deno.env.get("ENVIRONMENT") === "local") {
      sesClient = new SESClient({
        region: "us-east-2",
        endpoint: Deno.env.get("LOCAL_AWS_DOMAIN"),
        credentials: {
          accessKeyId: "test",
          secretAccessKey: "test",
        },
      });
    } else {
      sesClient = new SESClient({});
    }

    try {
      const {
        toAddress,
        fromAddress,
        text,
        cc,
        bcc,
        subject,
        html,
        files,
      } = await req.json();

      if (!toAddress || !fromAddress || !subject || !html) {
        return new Response(
          JSON.stringify({
            message:
              "Missing required fields. toAddress, fromAddress, subject and html are required.",
          }),
          {
            status: 400,
            headers: { ...corsHeaders, "Content-Type": "application/json" },
          },
        );
      }

      const attachments: {
        filename: string;
        content: Uint8Array;
        contentType: string;
      }[] = [];

      files.forEach(
        (file: { filename: string; content: string; contentType: string }) => {
          const base64Content = file.content.split(",")[1];

          const binaryContent = atob(base64Content);
          const arrayBuffer = new ArrayBuffer(binaryContent.length);
          const uint8Array = new Uint8Array(arrayBuffer);
          for (let i = 0; i < binaryContent.length; i++) {
            uint8Array[i] = binaryContent.charCodeAt(i);
          }

          attachments.push({
            filename: file.filename,
            content: uint8Array,
            contentType: file.contentType,
          });
        },
      );

      const transporter = nodemailer.createTransport({
        SES: { ses: sesClient, aws },
      });

      const result = await transporter.sendMail({
        from: `${fromAddress.name} <${fromAddress.email}>`,
        to: toAddress,
        cc: cc ?? undefined,
        bcc: bcc ?? undefined,
        text: text ?? undefined,
        subject,
        html,
        attachments,
      });

      return new Response(
        JSON.stringify({
          message: "Email Sent Successfully",
        }),
        {
          headers: { ...corsHeaders, "Content-Type": "application/json" },
          status: 200,
        },
      );
    } catch (error) {
      console.error(error);
      return new Response(JSON.stringify({ message: "Error sending email" }), {
        status: 500,
        headers: { ...corsHeaders, "Content-Type": "application/json" },
      });
    }
  }

  return new Response(JSON.stringify({ message: "Method not allowed" }), {
    status: 405,
    headers: { ...corsHeaders, "Content-Type": "application/json" },
  });
});
