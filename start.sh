#!/bin/sh

CONTAINER_FIRST_STARTUP="CONTAINER_FIRST_STARTUP"
if [ ! -e /$CONTAINER_FIRST_STARTUP ]; then
    touch /$CONTAINER_FIRST_STARTUP
    # place your script that you only want to run on first startup.
    # install all dependencies
    composer install
    # run migrations
    php bin/console doctrine:database:create --if-not-exists
    php bin/console doctrine:migrations:migrate

    # start message worker
    php bin/console messenger:consume async
else
    # script that should run the rest of the times (instances where you
    # stop/restart containers).

    # start message worker
    php bin/console messenger:consume async
fi
