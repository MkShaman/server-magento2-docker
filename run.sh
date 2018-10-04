#!/usr/bin/env bash
if [ "$2" == "clone" ]; then
  git clone https://github.com/MkShaman/server-magento2-docker.git $1 && cd $1;
fi

git config --global core.autocrlf false
git config --global core.eol LF
git config --global core.fileMode false
git config --global diff.renamelimit 5000

sudo chmod -R u+x ./*

docker image pull shaman666/server-magento2

mkdir src
chmod -R 777 src
rm -rf src/*
docker-compose up -d

echo "
===================== 🚀 Done 🚀 ===================

      Created by Shaman
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