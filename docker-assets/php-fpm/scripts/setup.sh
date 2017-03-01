#!/bin/sh

cd /app

# Install composer
if [ ! -f "composer.phar" ]; then
    php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
    php composer-setup.php
    php -r "unlink('composer-setup.php');"
    php composer.phar global require "hirak/prestissimo:^0.3"
fi

if [ ! -f ".env" ]; then
    cp .env.example .env
fi

# Initialize
php composer.phar install
php artisan migrate
