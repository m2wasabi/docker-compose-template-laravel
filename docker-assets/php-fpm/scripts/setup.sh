#!/bin/sh

cd /app

if [ ! -f ".env" ]; then
    cp .env.example .env
fi

# Initialize
php artisan migrate
