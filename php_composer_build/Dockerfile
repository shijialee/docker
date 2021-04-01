FROM shijialee/php_composer as composer

FROM shijialee/phpfpm_base

# bind mount Composer home directory from host to container to enable a persistent cache or share global configuration
ENV COMPOSER_HOME /tmp

# install unzip per composer prompt:
# As there is no 'unzip' command installed zip files are being unpacked using the PHP zip extension.
# This may cause invalid reports of corrupted archives. Besides, any UNIX permissions (e.g. executable) defined in the archives will be lost.
RUN set -x \
    && apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y -q --no-install-recommends \
        unzip \
        git \
        openssh-client \
    && rm -rf /var/lib/apt/lists/*

COPY --from=composer /usr/bin/composer /usr/bin/composer

# bind mount composer.json into this dir
WORKDIR /app
