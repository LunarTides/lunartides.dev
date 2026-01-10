#/bin/bash
docker build -t mycaddy -f ./caddy/Dockerfile .
docker compose up -d
