![Magento 2](https://cdn.rawgit.com/rafaelstz/magento2-snippets-visualstudio/master/images/icon.png)

#  Magento 2.3-develop Docker to Development

### Apache 2.4 + PHP 7.1 + OPCache + MariaDB + N98 Magerun 2 + XDebug + Redis

### Requirements

**Linux:**

Install [Docker](https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/) and [Docker-compose](https://docs.docker.com/compose/install/#install-compose).

### How to use

Execute in your terminal, change the *MYMAGENTO* to use the name of your project, you install Magento 2.3-develop from github:

```
curl -s https://raw.githubusercontent.com/MkShaman/server-magento2-docker/master/run | bash -s MYMAGENTO clone
```
If you want to install the Magento 2 latest version with composer, use like that:

```
curl -s https://raw.githubusercontent.com/MkShaman/server-magento2-docker/master/run-composer | bash -s MYMAGENTO clone
```

### Panels

Enjoy your new panels!

**Web server:** http://localhost/

**PHPMyAdmin:** http://localhost:8080

**Local emails:** http://localhost:8025