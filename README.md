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
  + curl
  + git
  + mysql-client
  + fcgi
  + nodejs
  + nodejs-npm
  + php7
  + python
  + py-pip


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
