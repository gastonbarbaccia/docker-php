FROM php:7.3-fpm-alpine

RUN docker-php-ext-install pdo pdo_mysql

ARG PUID=33
ARG PGID=33

RUN chown -R www-data:www-data /var/www
RUN chmod 755 /var/www

