#/bin/bash

DOCKER_MACHINE_VERSION=0.5.0
DOCKER_COMPOSE_VERSION=1.5.1

# Docker
brew install docker

# Docker Machine
curl -L https://github.com/docker/machine/releases/download/v${DOCKER_MACHINE_VERSION}/docker-machine_darwin-amd64.zip >machine.zip && \
unzip machine.zip && \
rm machine.zip && \
mv docker-machine* /usr/local/bin

# Docker Compose
curl -L https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
