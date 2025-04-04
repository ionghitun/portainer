#!/bin/sh
echo "*** Starting... ***"

cd scripts || exit

docker compose -p portainer down

echo "*** Started ***"
