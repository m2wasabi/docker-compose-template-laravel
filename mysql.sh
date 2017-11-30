#!/bin/sh
. .env
docker exec -it ${PROJECT_NAME}_mysql mysql -uhomestead -psecret homestead
