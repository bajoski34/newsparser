#!/bin/sh

# Install app dependencies
docker-compose run app composer install
#docker-compose run node npm install && yarn run dev
# run migrations
docker-compose run  app php bin/console doctrine:database:create --if-not-exists
docker-compose run  app php bin/console doctrine:migrations:migrate

# start message worker
docker-compose run --rm app php bin/console messenger:consume async -vv

