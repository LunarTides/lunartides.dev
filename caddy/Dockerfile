FROM oven/bun:1 AS site-builder
WORKDIR /app
COPY ./website .
RUN bun install && bun run build

FROM caddy:2.11
COPY --from=site-builder /app/dist /var/www/website
