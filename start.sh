#!/bin/sh

# Install app dependencies
docker-compose run news-app composer install
#docker-compose run news-node npm install && yarn run dev
# run migrations
docker-compose run  news-app php bin/console doctrine:database:create --if-not-exists
docker-compose run  news-app php bin/console doctrine:migrations:migrate

# start message worker
docker-compose run --rm app php bin/console messenger:consume async -vv

