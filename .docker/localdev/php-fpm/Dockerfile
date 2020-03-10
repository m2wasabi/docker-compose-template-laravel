FROM php:7.4-fpm-alpine
RUN apk add --no-cache \
        zip \
        libzip-dev \
        libpng \
        libpng-dev \
        libjpeg \
        icu \
        icu-dev \
        libxml2 \
        libxml2-dev \
        openssl \
        openssl-dev \
        oniguruma-dev
RUN docker-php-ext-install \
        pdo_mysql \
        mysqli \
        gd \
        mbstring \
        intl \
        xml \
        opcache \
        zip 
RUN curl -sS https://getcomposer.org/installer | php ;mv composer.phar /usr/local/bin/composer \
&& composer config -g repositories.packagist composer https://packagist.jp \
&& composer global require hirak/prestissimo \
&& composer global require phpunit/phpunit
