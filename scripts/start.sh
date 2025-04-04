#!/bin/sh
echo "*** Starting... ***"

cd scripts || exit

docker compose -p portainer up -d

echo "*** Started ***"
