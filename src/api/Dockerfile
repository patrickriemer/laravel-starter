FROM php:8.0-fpm-alpine

RUN docker-php-ext-install pdo_mysql bcmath

COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer
