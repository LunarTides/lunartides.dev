#!/bin/bash
docker exec -it forgejo su git -c 'mkdir /tmp/backups; cd /tmp/backups; forgejo dump'
docker cp forgejo:/tmp/backups .
echo "Saved to ./backups/"
