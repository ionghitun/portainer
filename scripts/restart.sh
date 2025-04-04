#!/bin/sh
echo "*** Restarting... ***"

cd scripts || exit

docker compose -p portainer restart

echo "*** Restarted ***"
