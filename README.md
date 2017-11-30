# docker-compose-template-laravel
simple docker-compose templates for Laravel, Node.js frontend(example Vue.js) and Swagger.

this use prefer officeal last images.

Linux, OSX amd Windows firiendly.

## Require

+ Docker

## Setup

1. Build Docker container  

    ```
    git clone git@github.com:m2wasabi/docker-compose-templates.git
    ```

    if you use different config (minimal usage) try another branches.

2. Clone youe project  

    ```
    git clone git@github.com:<your account>/<your Laravel project>.git app
    ```

    and Additional side project (if needed)

    ```
    git clone git@github.com:<your account>/<your Vue.js project>.git node
    git clone git@github.com:<your account>/<your Swagger project>.git swagger
    ```

    or new blank project

    ```
    mkdir -p app/public
    ```

3. Configure containers

    ### Nginx

    `docker-assets/nginx/conf.d/vhosts-main.conf`

    + Comment or uncomment settings

    ### PHP

    `docker-assets/php-fpm/Dockerfile`

    + Configure php packages

    ### Node.js (Default disabled)

    `docker-assets/node/scripts/bootstrap.sh`

    + Configure entrypoint

    ### Docker compose

    `docker-compose.yml`

    + Comment or uncomment settings

4. Build Docker container  

    ```
    docker-compose build
    ```

3. Start containers  

    ```
    docker-compose up
    ```

4. Join console to Setup  

    Linux/OSX
    ```
    ./php.sh
    ./mysql.sh
    ```

    Windows
    ```
    .\php.bat
    .\mysql.bat
    ```

    then, enter php-fpm container

    ```
    /scripts/setup.sh
    ```

## Usage

### Boot comtainers  

```
docker-compose up
```

### Delete containers  
```
docker-compose down
```

> ContainerDelete command does NOT delete data and contents.  

## Using shell

**PHP server**

```
./php.sh
```

or

```
php.bat
```

### Install Laravel (if new project)

```
composer global require laravel/installer

PATH=$PATH:$HOME/.composer/vendor/bin/
export PATH

laravel new
```

### Laravel configure parameters

If you use redis install predis

```
composer require predis/predis
```

Edit `.env` file

```
DB_HOST=mysql
REDIS_HOST=redis

CACHE_DRIVER=redis
SESSION_DRIVER=redis
QUEUE_DRIVER=redis
```

### Shell utility command for Laravel

  - Setup New Appplication

    ```
    /scripts/setup.sh
    ```

  - Update Application (migrate)

    ```
    /scripts/update.sh
    ```

  - Database clean and rebuild

    ```
    /scripts/db_reset.sh
    ```

**MySQL Server**

```
./mysql.sh
```

or

```
mysql.bat
```

## Data files and endpoints

+ mysql_data/  
    MySQL database storage  
    If destroy this content, Docker re-create new database.  

+ app/public  
    Web publish files  

+ node/server.js  (Default Disabled)  
    Node.js execute file as a web server  

+ swagger  (Default Disabled)  
    Web publish files on http://localhost:8080/swagger/ 
