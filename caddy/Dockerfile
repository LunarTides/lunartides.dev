FROM caddy:builder AS builder
RUN apk add --no-cache git go && \
    go install github.com/caddyserver/xcaddy/cmd/xcaddy@latest

RUN xcaddy build \
    --with github.com/caddy-dns/cloudflare

FROM caddy:latest
COPY --from=builder /usr/bin/caddy /usr/bin/caddy
