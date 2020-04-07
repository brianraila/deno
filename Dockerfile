FROM debian:jessie-slim

ARG DENO_VERSION=v0.36.0

EXPOSE 8080

RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates \
    curl \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/* \
    && curl -fsSLO --compressed "https://github.com/denoland/deno/releases/download/$DENO_VERSION/deno_linux_x64.gz" \
    && gunzip -c deno_linux_x64.gz > /usr/local/bin/deno \
    && chmod u+x /usr/local/bin/deno \
    && rm deno_linux_x64.gz 

COPY server-01.ts .

CMD [ "deno", "-A", "server-01.ts" ]