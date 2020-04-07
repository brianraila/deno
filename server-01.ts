import { serve } from "https://deno.land/std@v0.36.0/http/server.ts";

const s = serve({ port: 8080 });

console.log("Serving on http://localhost:8080/");

for await (const req of s) {
    console.log(req.method, req.url)
  req.respond({ body: "Hello from Dino World\n" });
}