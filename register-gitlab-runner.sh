#!/bin/sh
# Get the Shared Runner registration token from:
# http://gitlab.local:8090/admin/runners

registration_token=sxRWCsZhLF94R68Eerwb

docker exec -it gitlab-runner1 \
  gitlab-runner register \
    --non-interactive \
    --registration-token ${registration_token} \
    --locked=false \
    --description docker-stable \
    --url http://web:8090 \
    --clone-url http://web:8090 \
    --executor docker \
    --docker-image docker:stable \
    --docker-volumes "/var/run/docker.sock:/var/run/docker.sock" \
    --docker-network-mode gitlab-network
