FROM php:7.4-apache

RUN  docker-php-ext-install mysqli && docker-php-ext-enable mysqli

COPY . /var/www/html

RUN sed -i 's/localhost/mysql-service/g' /var/www/html/config/database.php

EXPOSE 80
