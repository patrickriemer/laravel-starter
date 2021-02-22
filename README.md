docker-compose up
docker-compose run --rm api composer create-project --prefer-dist laravel/laravel tmp "8.*"
docker-compose run --rm api sh -c "mv -n tmp/.* ./ && mv tmp/* ./ && rm -Rf tmp"

Adjust contents in /src/api/.env

APP_NAME=Laravel
APP_ENV=local
APP_KEY=base64:IftSQlCXdD+KcspjI4BxjJCnUIvftASiRpWaLJSthVA=
APP_DEBUG=true
APP_URL=http://api.template.test

LOG_CHANNEL=stack
LOG_LEVEL=debug

DB_CONNECTION=mysql
DB_HOST=mysql
DB_PORT=3306
DB_DATABASE=database
DB_USERNAME=username
DB_PASSWORD=secret

BROADCAST_DRIVER=log
CACHE_DRIVER=file
QUEUE_CONNECTION=sync
SESSION_DRIVER=file
SESSION_LIFETIME=120

MEMCACHED_HOST=127.0.0.1

MAIL_MAILER=smtp
MAIL_PASSWORD=null
MAIL_ENCRYPTION=null
MAIL_FROM_ADDRESS=null
MAIL_FROM_NAME="${APP_NAME}"

MAIL_PORT=2525
MAIL_DRIVER=SMTP
MAIL_USERNAME=Template



Migrate

docker-compose exec api php artisan migrate