# alphasocket/dockerized-toolbox
#### toolbox
All required cli in one container


| [![Build Status](https://semaphoreci.com/api/v1/alphasocket/dockerized-toolbox/branches/latest/badge.svg)](https://semaphoreci.com/alphasocket/dockerized-toolbox) | Size / Layers | Version |
| ----- | ----- | ----- |
| Dev image | [![](https://images.microbadger.com/badges/image/03192859189254/dockerized-toolbox:latest.svg)](https://microbadger.com/images/03192859189254/toolbox:latest ) | [![](https://images.microbadger.com/badges/version/03192859189254/dockerized-toolbox:latest.svg)](https://microbadger.com/images/03192859189254/toolbox:latest) |
| Prd image | [![](https://images.microbadger.com/badges/image/alphasocket/toolbox:latest.svg)](https://microbadger.com/images/alphasocket/toolbox:latest ) | [![](https://images.microbadger.com/badges/version/alphasocket/toolbox:latest.svg)](https://microbadger.com/images/alphasocket/toolbox:latest) |

## Branches & Versions
- latest


## Packages installed
- Runtime dependencies:
  + bash
  + htop
  + git
  + mysql-client
  + fcgi
  + nodejs
  + nodejs-npm
  + python
  + python3
  + py-pip
  + php7
  + php7-curl
  + php7-dom
  + php7-gd
  + php7-gettext
  + php7-iconv
  + php7-json
  + php7-mbstring
  + php7-mcrypt
  + php7-mysqli
  + php7-opcache
  + php7-openssl
  + php7-pdo
  + php7-pdo_dblib
  + php7-pdo_mysql
  + php7-pdo_pgsql
  + php7-pdo_sqlite
  + php7-pear
  + php7-pgsql
  + php7-phar
  + php7-posix
  + php7-session
  + php7-soap
  + php7-sockets
  + php7-sqlite3
  + php7-xml
  + php7-zip
  + php7-zlib


## Configurable envvars
~~~
CONFIG_GROUPS_MAIN_ID="1000"
CONFIG_GROUPS_MAIN_NAME="docker"
CONFIG_GROUPS_ADDITIONAL_ID="1001"
CONFIG_GROUPS_ADDITIONAL_NAME=""
CONFIG_USERS_MAIN_ID="1000"
CONFIG_USERS_MAIN_NAME="docker"
CONFIG_USERS_MAIN_GROUPS="docker"
CONFIG_USERS_ADDITIONAL_ID="1001"
CONFIG_USERS_ADDITIONAL_NAME=""
CONFIG_USERS_ADDITIONAL_GROUPS=""
CONFIG_REDINESS_TEST="true"
CONFIG_LIVENESS_TEST="true"
CONFIG_PATHS_CONTAINER_STATUS="/tmp/container_status"
~~~
