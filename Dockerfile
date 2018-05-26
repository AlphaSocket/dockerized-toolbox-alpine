#
# Do not change content here, image automatically built
#
FROM docker:dind

ARG BUILD_COMMIT
ARG BUILD_DATE

ENV \
	GENERAL_DOCKER_USERS_DEV="03192859189254" \
	GENERAL_DOCKER_USERS_PRD="alphasocket" \
	GENERAL_DOCKER_USER="alphasocket" \
	GENERAL_DOCKER_REGISTRIES_DEV="docker.io" \
	GENERAL_DOCKER_REGISTRIES_PRD="docker.io" \
	GENERAL_DOCKER_REGISTRY="docker.io" \
	GENERAL_KEYS_TRUE="True" \
	GENERAL_KEYS_FALSE="False" \
	GENERAL_KEYS_DEV="dev" \
	GENERAL_KEYS_PRD="prd" \
	BUILD_USER="03192859189254" \
	BUILD_REGISTRY="docker.io" \
	BUILD_REPO="https://github.com/alphaSocket/dockerized-toolbox-alpine" \
	BUILD_BRANCH="latest" \
	BUILD_VERSION="latest" \
	BUILD_ENV="prd" \
	BUILD_FAMILY="alpine" \
	BUILD_FROM="docker:dind" \
	BUILD_NAME="toolbox-alpine" \
	BUILD_PORTS_ADDITIONAL="" \
	BUILD_PORTS_MAIN="2049" \
	BUILD_CMD="/usr/local/bin/nfsd" \
	BUILD_PATHS_BASH_COMPLETITIONS="$HOME/.bash_completion.d" \
	BUILD_PATHS_BINARIES_FOLDER="/usr/local/bin" \
	SETUP_PATHS_BINARIES="/usr/local/bin" \
	SETUP_PATHS_SETUP="/usr/local/bin/setup" \
	SETUP_PATHS_CONFIG="/usr/local/bin/config" \
	SETUP_DEPENDENCIES_CONFIG="" \
	SETUP_DEPENDENCIES_SETUP="gcc py-setuptools openssl-dev jansson-dev python-dev build-base libc-dev file-dev automake autoconf libtool flex" \
	SETUP_DEPENDENCIES_UTILITIES="bash unzip jq htop git mercurial gnupg man man-pages fcgi openssh-client ansible file" \
	SETUP_DEPENDENCIES_NFSD="nfs-utils iproute2" \
	SETUP_DEPENDENCIES_OP="libc6-compat" \
	SETUP_DEPENDENCIES_PHP="php7 php7-curl php7-dom php7-gd php7-ctype php7-gettext php7-iconv php7-json php7-mbstring php7-mcrypt php7-mysqli php7-opcache php7-openssl php7-pdo php7-pdo_dblib php7-pdo_mysql php7-pdo_pgsql php7-pdo_sqlite php7-pear php7-pgsql php7-phar php7-posix php7-session php7-soap php7-sockets php7-sqlite3 php7-xml php7-simplexml php7-zip php7-zlib" \
	SETUP_DEPENDENCIES_NODE="nodejs nodejs-npm" \
	SETUP_DEPENDENCIES_PYTHON="python python3 py-pip py-psutil" \
	SETUP_DEPENDENCIES_DB="mysql-client redis" \
	SETUP_DEPENDENCIES_GOOGLE="py-crcmod libc6-compat openssh-client" \
	SETUP_DEPENDENCIES_RUNTIME="bash unzip jq htop git mercurial gnupg man man-pages fcgi openssh-client ansible file libc6-compat php7 php7-curl php7-dom php7-gd php7-ctype php7-gettext php7-iconv php7-json php7-mbstring php7-mcrypt php7-mysqli php7-opcache php7-openssl php7-pdo php7-pdo_dblib php7-pdo_mysql php7-pdo_pgsql php7-pdo_sqlite php7-pear php7-pgsql php7-phar php7-posix php7-session php7-soap php7-sockets php7-sqlite3 php7-xml php7-simplexml php7-zip php7-zlib nodejs nodejs-npm python python3 py-pip py-psutil mysql-client redis py-crcmod libc6-compat openssh-client nfs-utils iproute2" \
	CONFIG_GROUPS_MAIN_ID="1000" \
	CONFIG_GROUPS_MAIN_NAME="docker" \
	CONFIG_GROUPS_ADDITIONAL_ID="1001" \
	CONFIG_GROUPS_ADDITIONAL_NAME="" \
	CONFIG_USERS_MAIN_ID="1000" \
	CONFIG_USERS_MAIN_NAME="docker" \
	CONFIG_USERS_MAIN_GROUPS="docker" \
	CONFIG_USERS_ADDITIONAL_ID="1001" \
	CONFIG_USERS_ADDITIONAL_NAME="" \
	CONFIG_USERS_ADDITIONAL_GROUPS="" \
	CONFIG_REDINESS_TEST="true" \
	CONFIG_LIVENESS_TEST="true" \
	CONFIG_PATHS_CONTAINER_STATUS="/tmp/container_status" \
	CONFIG_NFS_SHARED_DIRECTORY="/var/nfsshare" \
	CONFIG_NFS_IP_PERMITTED="127.0.0.1,10.*.*.*,172.16.*.*,172.17.*.*,172.18.*.*,172.19.*.*,172.20.*.*,172.21.*.*,172.22.*.*,172.23.*.*,172.24.*.*,172.25.*.*,172.26.*.*,172.27.*.*,172.28.*.*,172.29.*.*,172.30.*.*,172.31.*.*,192.168.*.*" \
	CONFIG_NFS_SYNC="async"
ADD imports/bin/docker-config /usr/local/bin/docker-config
ADD imports/bin/docker-entrypoint /usr/local/bin/docker-entrypoint
ADD imports/bin/docker-rediness-test /usr/local/bin/docker-rediness-test
ADD imports/bin/docker-liveness-test /usr/local/bin/docker-liveness-test
ADD imports/bin/setup /usr/local/bin/setup/1527340308
ADD imports/bin/config /usr/local/bin/config/1527340308
ADD imports/pause /usr/local/bin/pause


RUN chmod +x -R /usr/local/bin && \
    sync && \
    /usr/local/bin/setup/1527340308 && \
    ${BUILDER_TARGETS_CONTAINER_HARDEN}

EXPOSE 2049 


ENTRYPOINT ["tini", "--", "docker-entrypoint"]
CMD ["/usr/local/bin/nfsd"]

LABEL \
    org.label-schema.vcs-ref="$BUILD_COMMIT" \
    org.label-schema.vcs-url="https://github.com/alphaSocket/dockerized-toolbox-alpine"