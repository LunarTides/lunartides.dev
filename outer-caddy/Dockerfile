FROM caddy:builder AS caddy-builder
RUN apk add --no-cache git go && \
  go install github.com/caddyserver/xcaddy/cmd/xcaddy@latest

RUN xcaddy build \
  --with github.com/caddy-dns/cloudflare

FROM caddy:2.11
COPY --from=caddy-builder /usr/bin/caddy /usr/bin/caddy
