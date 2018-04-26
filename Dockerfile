#
# Do not change content here, image automatically built
#
FROM alpine:latest

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
	BUILD_REPO="https://github.com/alphaSocket/dockerized-toolbox" \
	BUILD_BRANCH="latest" \
	BUILD_VERSION="latest" \
	BUILD_ENV="prd" \
	BUILD_FROM="alpine:latest" \
	BUILD_FAMILY="alpine" \
	BUILD_PORTS_MAIN="" \
	BUILD_PORTS_ADDITIONAL="" \
	BUILD_NAME="toolbox" \
	BUILD_CMD="sleep 999" \
	BUILD_PATHS_BINARIES_FOLDER="/usr/local/bin" \
	SETUP_PATHS_BINARIES="/usr/local/bin" \
	SETUP_PATHS_SETUP="/usr/local/bin/setup" \
	SETUP_PATHS_CONFIG="/usr/local/bin/config" \
	SETUP_DEPENDENCIES_SETUP="" \
	SETUP_DEPENDENCIES_CONFIG="" \
	SETUP_DEPENDENCIES_PHP7_2="php@php7_2 php-curl@php7_2 php-dom@php7_2 php-gd@php7_2 php-gettext@php7_2 php-iconv@php7_2 php-json@php7_2 php-mbstring@php7_2 php-mysqli@php7_2 php-opcache@php7_2 php-openssl@php7_2 php-pdo@php7_2 php-pdo_dblib@php7_2 php-pdo_mysql@php7_2 php-pdo_pgsql@php7_2 php-pdo_sqlite@php7_2 php-pear@php7_2 php-pgsql@php7_2 php-phar@php7_2 php-phpdbg@php7_2 php-posix@php7_2 php-session@php7_2 php-soap@php7_2 php-sockets@php7_2 php-sqlite3@php7_2 php-xml@php7_2 php-zip@php7_2 php-zlib" \
	SETUP_DEPENDENCIES_PHP7_0="php@php7_0 php-curl@php7_0 php-dom@php7_0 php-gd@php7_0 php-gettext@php7_0 php-iconv@php7_0 php-json@php7_0 php-mbstring@php7_0 php-mcrypt@php7_0 php-mysqli@php7_0 php-opcache@php7_0 php-openssl@php7_0 php-pdo@php7_0 php-pdo_dblib@php7_0 php-pdo_mysql@php7_0 php-pdo_pgsql@php7_0 php-pdo_sqlite@php7_0 php-pear@php7_0 php-pgsql@php7_0 php-phar@php7_0 php-phpdbg@php7_0 php-posix@php7_0 php-session@php7_0 php-soap@php7_0 php-sockets@php7_0 php-sqlite3@php7_0 php-xml@php7_0 php-zip@php7_0 php-zlib" \
	SETUP_DEPENDENCIES_RUNTIME="bash htop git mysql-client fcgi nodejs nodejs-npm python python3 py-pip $SETUP_DEPENDENCIES_PHP" \
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
	CONFIG_PATHS_CONTAINER_STATUS="/tmp/container_status"
ADD imports/bin/docker-config /usr/local/bin/docker-config
ADD imports/bin/docker-run /usr/local/bin/docker-run
ADD imports/bin/docker-rediness-test /usr/local/bin/docker-rediness-test
ADD imports/bin/docker-liveness-test /usr/local/bin/docker-liveness-test
ADD imports/bin/setup /usr/local/bin/setup/1524774260
ADD imports/bin/config /usr/local/bin/config/1524774260


RUN chmod +x -R /usr/local/bin && \
    sync && \
    /usr/local/bin/setup/1524774260 1>/dev/stdout 2>/dev/stderr




ENTRYPOINT ["/bin/sh", "-c"]
CMD ["/usr/local/bin/docker-run"]

LABEL \
    org.label-schema.vcs-ref="$BUILD_COMMIT" \
    org.label-schema.vcs-url="https://github.com/alphaSocket/dockerized-toolbox"