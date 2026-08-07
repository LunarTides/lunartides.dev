#!/bin/bash
docker compose down
datestamp=$(date +%m-%d-%Y)
cp -r ./vw-data/ ./backup-tmp/
tar -czvf "$HOME/backups/vaultwarden/${datestamp}.tar.gz" ./backup-tmp/
rm -rf ./backup-tmp/
docker compose up -d
