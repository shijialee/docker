FROM ubuntu:18.04
LABEL maintainer="qiang@cpan.org"

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y -q --no-install-recommends \
        php-cgi \
        php-fpm \
        php-mysql \
        php-gd \
        php-zip \
        php-mbstring \
        php-xml \
        php-redis \
        php-bcmath \
        php-curl \
        php-sqlite3 \
        ca-certificates \
        && rm -rf /var/lib/apt/lists/*

# create /run/php manually because it is usually created by init script
RUN rm /etc/php/7.2/fpm/pool.d/www.conf && \
    mkdir /run/php && \
    chown www-data.www-data /run/php
