FOR /F "usebackq delims== tokens=1,*" %%i IN (".env") do SET %%i=%%j

docker-compose run php-fpm sh
