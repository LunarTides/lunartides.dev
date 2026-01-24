FROM caddy:builder AS caddy-builder
RUN apk add --no-cache git go && \
    go install github.com/caddyserver/xcaddy/cmd/xcaddy@latest

RUN xcaddy build \
    --with github.com/caddy-dns/cloudflare

FROM oven/bun AS site-builder
WORKDIR /app
COPY ./website .
RUN bun install
RUN bun run build

FROM caddy:latest
COPY --from=caddy-builder /usr/bin/caddy /usr/bin/caddy
COPY --from=site-builder /app/dist /var/www/website
