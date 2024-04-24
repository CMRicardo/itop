!#/bin/bash
docker compose up -d
docker logs my-itop | grep -A7 -B1 "Your MySQL user 'admin' has password:"
