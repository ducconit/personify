#!/bin/bash
# Currently, we are using Laravel Homestead for development

# Check file .env exists
if [ ! -f ".env" ]; then
    cp .env.example .env
    php artisan key:generate
fi

# Check dependencies
if [ ! -d "vendor" ]; then
    composer install
fi
