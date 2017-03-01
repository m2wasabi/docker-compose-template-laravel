# docker-compose-templates
simple docker-compose templates for Laravel, Node.js frontend(example Vue.js) and Swagger.

this use prefer officeal last images.

Linux, OSX amd Windows firiendly.

## Require

+ Docker

## Setup

1. Build Docker container  

    ```
    git clone git@github.com:m2wasabi/docker-compose-templates.git
    docker-compose build
    ```

    if you use different config (minimal usage) try another branches.

2. Clone youe project  

    ```
    git clone git@github.com:<your account>/<your Laravel project>.git app
    git clone git@github.com:<your account>/<your Vue.js project>.git node
    git clone git@github.com:<your account>/<your Swagger project>.git swagger
    docker-compose build
    ```


3. Start containers  

    ```
    docker-compose up
    ```

4. Setup api  

    Linux/OSX
    ```
    ./php.sh
    ```

    Windows
    ```
    php.bat
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

### Shell utility command

  - New Setup API server

    ```
    /scripts/setup.sh
    ```

  - Update API server

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

+ node/server.js  
    Node.js execute file as a web server  

+ swagger  
    Web publish files on http://localhost:8080/swagger/ 
