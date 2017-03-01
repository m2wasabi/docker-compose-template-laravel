#!/bin/sh

cd /app

# Initialize
php composer.phar global require "hirak/prestissimo:^0.3"
php composer.phar install
php artisan migrate
