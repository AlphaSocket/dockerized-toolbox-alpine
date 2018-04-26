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
	SETUP_DEPENDENCIES_PHP="php@php php-curl@php php-dom@php php-gd@php php-gettext@php php-iconv@php php-json@php php-mbstring@php php-mcrypt@php php-mysqli@php php-opcache@php php-openssl@php php-pdo@php php-pdo_dblib@php php-pdo_mysql@php php-pdo_pgsql@php php-pdo_sqlite@php php-pear@php php-pgsql@php php-phar@php php-phpdbg@php php-posix@php php-session@php php-soap@php php-sockets@php php-sqlite3@php php-xml@php php-zip@php php-zlib" \
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
ADD imports/bin/setup /usr/local/bin/setup/1524773337
ADD imports/bin/config /usr/local/bin/config/1524773337


RUN chmod +x -R /usr/local/bin && \
    sync && \
    /usr/local/bin/setup/1524773337 1>/dev/stdout 2>/dev/stderr




ENTRYPOINT ["/bin/sh", "-c"]
CMD ["/usr/local/bin/docker-run"]

LABEL \
    org.label-schema.vcs-ref="$BUILD_COMMIT" \
    org.label-schema.vcs-url="https://github.com/alphaSocket/dockerized-toolbox"