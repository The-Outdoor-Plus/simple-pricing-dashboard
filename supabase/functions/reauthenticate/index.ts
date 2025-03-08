import "jsr:@supabase/functions-js/edge-runtime.d.ts";
import { createClient } from "https://esm.sh/@supabase/supabase-js@2";
import { corsHeaders } from "../_shared/cors.ts";
import { prepareVirtualFile } from "https://deno.land/x/mock_file@v1.1.2/mod.ts";
import nodemailer from "npm:nodemailer";
import { SESClient } from "npm:@aws-sdk/client-ses";
import aws from "npm:@aws-sdk/client-ses";

Deno.serve(async (req: Request) => {
  if (req.method === "OPTIONS") {
    return new Response(null, { status: 204, headers: { ...corsHeaders } });
  }

  prepareVirtualFile("./aws/config");
  prepareVirtualFile("./aws/credentials");

  if (req.method === "POST") {
    let sesClient = null;
    let transporter = null;
    if (Deno.env.get("ENVIRONMENT") === "local") {
      sesClient = new SESClient({
        region: "us-east-2",
        endpoint: Deno.env.get("LOCAL_AWS_DOMAIN"),
        credentials: {
          accessKeyId: "test",
          secretAccessKey: "test",
        },
      });
      transporter = nodemailer.createTransport({
        host: "host.docker.internal",
        port: 54325,
        secure: false,
        auth: {
          user: "admin@inbucket.local",
          pass: "password",
        },
      });
    } else {
      sesClient = new SESClient({});
      transporter = nodemailer.createTransport({
        SES: { ses: sesClient, aws },
      });
    }

    const adminSupabaseClient = createClient(
      Deno.env.get("SUPABASE_URL") ?? "",
      Deno.env.get("SUPABASE_SERVICE_ROLE_KEY") ?? "",
      {
        global: {
          headers: {
            Authorization:
              `Bearer ${Deno.env.get("SUPABASE_SERVICE_ROLE_KEY")}` ?? "",
          },
        },
        auth: {
          autoRefreshToken: false,
          persistSession: false,
        },
      },
    );

    const { email, division } = await req.json();

    if (!email) {
      return new Response(JSON.stringify({ message: "Email is required" }), {
        status: 400,
        headers: { ...corsHeaders, "Content-Type": "application/json" },
      });
    }

    let projectDivision = "The Outdoor Plus";
    if (division) {
      projectDivision = division;
    }

    const { data, error } = await adminSupabaseClient.auth.admin.generateLink({
      type: "magiclink",
      email: email,
    });

    if (error || !(data?.properties?.email_otp)) {
      return new Response(
        JSON.stringify({
          message: error?.message || "An error occurred sending OTP",
        }),
        {
          status: 400,
          headers: { ...corsHeaders, "Content-Type": "application/json" },
        },
      );
    }

    const fromAddress = projectDivision === "The Outdoor Plus"
      ? "TOP Portal <portal@mail.theoutdoorplus.com>"
      : "Videl USA Portal <portal@mail.theoutdoorplus.com>";
    const subject = projectDivision === "The Outdoor Plus"
      ? "🔑 One-Time Password for TOP Dealer Portal"
      : "🔑 One-Time Password for Videl USA Dealer Portal";

    const siteUrl = projectDivision === "The Outdoor Plus"
      ? "https://portal.theoutdoorplus.com"
      : "https://portal.videlusa.com";

    const supportEmail = projectDivision === "The Outdoor Plus"
      ? "support@theoutdoorplus.com"
      : "support@videlusa.com";

    const result = await transporter.sendMail({
      from: fromAddress,
      to: email,
      subject,
      html: `
                   <p>Hi ${data?.user?.user_metadata?.first_name || ""},</p>

      <p>We received a request to reauthenticate your account. Please use the following one-time password (OTP) to complete your login:</p>

      <p>🔑 Your OTP: ${data?.properties?.email_otp}</p>

          <p>This code is valid for 10 minutes and can only be used once. If this Re-Authenticate attempt was not initiated by you, please reset your TOP Dealer Portal Account. To reset your password please go to the following link: <a href="${siteUrl}/update-password">Portal - Password Reset</a></p>

          <p>Re authentication attempt might be due to the following requests:</p>
          <ul>
            <li>First Time Sign In Password Change</li>
          </ul>

          <p>For security reasons, do not share this code with anyone.</p>

          <p>If you need assistance, feel free to contact our support team. <a href="mailto:${supportEmail}">${supportEmail}</a></p>
      `,
    });

    return new Response(JSON.stringify({ message: "OTP sent!" }), {
      status: 200,
      headers: { ...corsHeaders, "Content-Type": "application/json" },
    });
  }

  return new Response(JSON.stringify({ message: "Method not allowed" }), {
    status: 405,
    headers: { ...corsHeaders, "Content-Type": "application/json" },
  });
});
