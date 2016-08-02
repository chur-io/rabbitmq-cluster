# rabbitmq-cluster
A dynamically scalable rabbitmq cluster setup for docker using docker-compose and docker network

## Pre-requisites
- Minimum Docker version 1.11

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