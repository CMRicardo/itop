#!/bin/bash

docker run -d -p 8080:80 --name=my-itop -v my-itop-conf-volume:/var/www/html/conf -v my-itop-db-volume:/var/lib/mysql vbkunin/itop
docker exec my-itop chown www-data:www-data /var/www/html/conf
