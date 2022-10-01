## News Parser Application

# Installation
you need to have the following installed:
1. Docker

# Running the application
1. Clone the repository
2. Run `docker-compose up` in the root directory of the project
3. The application will be available at `localhost:8080`
4. Rabbitmq Admin available at `localhost:15672/`. login with guest/guest credentials

# Start Parsing News
1. Go to `localhost:8080/login`
2. Login with `john_admin/password` credentials for admin user
3. Login with `john_moderator/password` credentials for moderator user
4. run the command `docker-compose run --rm app php bin/console app:start-parsing-news --url=''` to start parsing news
5. run the command `php bin/console app:start-parsing-news
   `