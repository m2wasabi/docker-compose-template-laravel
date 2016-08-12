FROM php:7-fpm-alpine
RUN apk add --no-cache \
        libmcrypt \
        libmcrypt-dev \
    && \
    docker-php-ext-install \
        pdo_mysql \
        mysqli \
        mcrypt

