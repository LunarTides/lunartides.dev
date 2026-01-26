#/bin/bash
docker build -t inner-caddy -f ./inner-caddy/Dockerfile .
docker compose up -d
