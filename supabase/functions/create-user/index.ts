// Follow this setup guide to integrate the Deno language server with your editor:
// https://deno.land/manual/getting_started/setup_your_environment
// This enables autocomplete, go to definition, etc.

// Setup type definitions for built-in Supabase Runtime APIs
import "jsr:@supabase/functions-js/edge-runtime.d.ts";
import { createClient } from "https://esm.sh/@supabase/supabase-js@2";
import { corsHeaders } from "../_shared/cors.ts";

Deno.serve(async (req: Request) => {
  if (req.method === "OPTIONS") {
    return new Response(null, { status: 204, headers: { ...corsHeaders } });
  }

  if (req.method === "POST") {
    if (req.headers.get("Authorization") === null) {
      return new Response(JSON.stringify({ message: "Unauthorized" }), {
        status: 401,
        headers: { ...corsHeaders, "Content-Type": "application/json" },
      });
    }

    const supabaseClient = createClient(
      Deno.env.get("SUPABASE_URL") ?? "",
      Deno.env.get("SUPABASE_ANON_KEY") ?? "",
      {
        global: {
          headers: { Authorization: req.headers.get("Authorization") ?? "" },
        },
      },
    );

    const { data: { user }, error: userError } = await supabaseClient.auth
      .getUser();

    if (userError) {
      return new Response(
        JSON.stringify({
          message: `Unauthorized. ${userError.message}`,
        }),
        {
          status: 401,
          headers: { ...corsHeaders, "Content-Type": "application/json" },
        },
      );
    }

    if (user === null || (user && user?.user_metadata?.role !== "ADMIN")) {
      return new Response(JSON.stringify({ message: "Unauthorized" }), {
        status: 401,
        headers: { ...corsHeaders, "Content-Type": "application/json" },
      });
    }

    const {
      email,
      password,
      role,
      first_name,
      last_name,
      company,
      avatar_url,
      first_time,
      email_otp_active,
    } = await req.json();

    if (!email || !password || !role || !first_name || !last_name || !company) {
      const missingFields = [];
      if (!email) missingFields.push("email");
      if (!password) missingFields.push("password");
      if (!role) missingFields.push("role");
      if (!first_name) missingFields.push("first_name");
      if (!last_name) missingFields.push("last_name");
      if (!company) missingFields.push("company");

      return new Response(
        JSON.stringify({
          message: `Missing required fields: ${missingFields.join(", ")}`,
        }),
        {
          status: 400,
          headers: { ...corsHeaders, "Content-Type": "application/json" },
        },
      );
    }

    let first_time_local = first_time;
    let email_otp_active_local = email_otp_active;

    if (first_time === null || first_time === undefined) {
      first_time_local = true;
    }

    if (email_otp_active === null || email_otp_active === undefined) {
      email_otp_active_local = true;
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

    const { data: { user: newUser }, error } = await adminSupabaseClient.auth
      .admin.createUser({
        email,
        password,
        user_metadata: {
          first_name,
          last_name,
          role,
          company,
          avatar_url,
          first_time: first_time_local,
          email_otp_active: email_otp_active_local,
        },
        email_confirm: true,
      });

    if (error) {
      return new Response(
        JSON.stringify({
          message: "Error creating user.",
          error: error.message,
        }),
        {
          status: 500,
          headers: { ...corsHeaders, "Content-Type": "application/json" },
        },
      );
    }

    return new Response(
      JSON.stringify({ message: "User created successfully", user: newUser }),
      {
        status: 200,
        headers: { ...corsHeaders, "Content-Type": "application/json" },
      },
    );
  }

  return new Response(JSON.stringify({ message: "Method Not Allowed" }), {
    status: 405,
    headers: { ...corsHeaders, "Content-Type": "application/json" },
  });
});

/* To invoke locally:

  1. Run `supabase start` (see: https://supabase.com/docs/reference/cli/supabase-start)
  2. Make an HTTP request:

  curl -i --location --request POST 'http://127.0.0.1:54321/functions/v1/create-user' \
    --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZS1kZW1vIiwicm9sZSI6ImFub24iLCJleHAiOjE5ODM4MTI5OTZ9.CRXP1A7WOeoJeXxjNni43kdQwgnWNReilDMblYTn_I0' \
    --header 'Content-Type: application/json' \
    --data '{"name":"Functions"}'

*/
