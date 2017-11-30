FROM php:7-fpm-alpine
RUN apk add --no-cache \
        zip \
        libpng \
        libpng-dev \
        libjpeg \
        icu \
        icu-dev \
        libxml2 \
        libxml2-dev \
        openssl \
        openssl-dev 
RUN docker-php-ext-install \
        pdo_mysql \
        mysqli \
        gd \
        mbstring \
        intl \
        xml \
        opcache \
        zip 
RUN curl -sS https://getcomposer.org/installer | php ;mv composer.phar /usr/local/bin/composer;
RUN composer global require hirak/prestissimo
RUN composer global require phpunit/phpunit
