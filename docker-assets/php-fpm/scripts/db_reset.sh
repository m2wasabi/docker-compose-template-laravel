#!/bin/sh

cd /app

# migration
php artisan migrate:refresh
