# rabbitmq-cluster
A dynamically scalable rabbitmq cluster setup for docker using docker-compose and docker network

## Prerequisites
- Minimum Docker version 1.12
- Recommended [Docker for Windows](https://docs.docker.com/docker-for-windows/) or [Docker for Mac](https://docs.docker.com/docker-for-mac/) for testing on workstation
- Recommended [Docker Swarm](https://docs.docker.com/swarm/get-swarm/) for hosting on Linux servers.

## Usage
```sh
docker build -t rabbitmq-scalable .
docker network create back-tier
docker-compose up -d
docker-compose scale rabbitmq=3
```

## Credits
Inspired by [harbur/docker-rabbitmq-cluster](https://github.com/harbur/docker-rabbitmq-cluster), 
  which is inspired by [bijukunjummen/docker-rabbitmq-cluster](https://github.com/bijukunjummen/docker-rabbitmq-cluster)