## News Parser Application

# Installation
you need to have the following installed:
1. Docker

# Running the application
1. Clone the repository
2. Run `docker-compose up --build -d` in the root directory of the project
3. The application will be available at `localhost:8080`
4. Rabbitmq Admin available at `localhost:15672/`. login with guest/guest credentials

# Setup project dependencies and database
1. run `bash start.sh` in the root directory of the project. This will create the database and tables

# Start Parsing News
1. run `docker-compose run app php bin/console messenger:consume async -vv` to start worker.
2. run the command `docker-compose run app php bin/console app:start-parsing-news --url=''` to start parsing news. The url is the url of the news site you want to parse. The url should be in the format `https://www.example.com`
3. by default, the application will parse the news from `https://highload.today/category/novosti/`.


1. Go to `localhost:8080/login`
2. Login with `john_admin/password` credentials for admin user
3. Login with `john_moderator/password` credentials for moderator user
4. 
5. run the command `php bin/console app:start-parsing-news`