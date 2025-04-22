#!/bin/sh
cd scripts || exit

echo
printf "Do you want to update images before rebuilding? (y/n) [default: y]: "
read UPDATE_IMAGES
UPDATE_IMAGES=${UPDATE_IMAGES:-y}

if [ "$UPDATE_IMAGES" = "y" ] || [ "$UPDATE_IMAGES" = "Y" ]; then
    echo
    echo "===== Updating images... ====="
    echo

    NGINX_VERSION=$(grep -oP '^NGINX_VERSION=\K.*' .env)
    PORTAINER_VERSION=$(grep -oP '^PORTAINER_VERSION=\K.*' .env)

    docker pull "nginx:$NGINX_VERSION"
    docker pull "portainer/portainer-ce:$PORTAINER_VERSION"
fi

echo
echo "===== Building and starting containers... ====="
echo

docker compose build --no-cache
docker compose up -d

echo
echo "===== Done! ====="
echo
