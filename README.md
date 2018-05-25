# alphasocket/dockerized-toolbox-alpine
#### toolbox-alpine
This docker image will contain all required cli tools for security/development/testing operations


| [![Build Status](https://semaphoreci.com/api/v1/alphasocket/dockerized-toolbox-alpine/branches/latest/badge.svg)](https://semaphoreci.com/alphasocket/dockerized-toolbox-alpine) | Size / Layers | Version |
| ----- | ----- | ----- |
| Dev image | [![](https://images.microbadger.com/badges/image/03192859189254/dockerized-toolbox-alpine:latest.svg)](https://microbadger.com/images/03192859189254/toolbox-alpine:latest ) | [![](https://images.microbadger.com/badges/version/03192859189254/dockerized-toolbox-alpine:latest.svg)](https://microbadger.com/images/03192859189254/toolbox-alpine:latest) |
| Prd image | [![](https://images.microbadger.com/badges/image/alphasocket/toolbox-alpine:latest.svg)](https://microbadger.com/images/alphasocket/toolbox-alpine:latest ) | [![](https://images.microbadger.com/badges/version/alphasocket/toolbox-alpine:latest.svg)](https://microbadger.com/images/alphasocket/toolbox-alpine:latest) |

## Branches & Versions
- latest


## Packages installed
- Setup dependencies:
  + gcc
  + py-setuptools
  + openssl-dev
  + jansson-dev
  + python-dev
  + build-base
  + libc-dev
  + file-dev
  + automake
  + autoconf
  + libtool
  + flex
- Runtime dependencies:
  + bash
  + unzip
  + jq
  + htop
  + git
  + mercurial
  + gnupg
  + man
  + man-pages
  + fcgi
  + openssh-client
  + ansible
  + file
  + $SETUP_DEPENDENCIES_OP
  + $SETUP_DEPENDENCIES_PHP
  + $SETUP_DEPENDENCIES_NODE
  + $SETUP_DEPENDENCIES_PYTHON
  + $SETUP_DEPENDENCIES_DB
  + $SETUP_DEPENDENCIES_GOOGLE
  + nfs-utils
  + iproute2


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
CONFIG_NFS_SHARED_DIRECTORY="/var/nfsshare"
CONFIG_NFS_IP_PERMITTED="127.0.0.1,10.*.*.*,172.16.*.*,172.17.*.*,172.18.*.*,172.19.*.*,172.20.*.*,172.21.*.*,172.22.*.*,172.23.*.*,172.24.*.*,172.25.*.*,172.26.*.*,172.27.*.*,172.28.*.*,172.29.*.*,172.30.*.*,172.31.*.*,192.168.*.*"
CONFIG_NFS_SYNC="async"
~~~
