#!/usr/bin/env bash


chmod -R 777 src

rm -rf src/*

docker-compose up -d && \
version=$(git describe --tags $(git rev-list --tags --max-count=1))
echo "
===================== 🚀 Done 🚀 ===================

      Created by Shaman
      v.$version
      Access your new links:

      🌎 Web server: http://localhost/
      ⚙️ PHPMyAdmin: http://localhost:8080
      ✉️ Local emails: http://localhost:8025

===================== 🚀 Done 🚀 ==================="

if [ -z "$1" ]
  then
    docker-compose exec --user www-data apache bash install-magento2
else
    docker-compose exec --user $@ apache bash
fi;