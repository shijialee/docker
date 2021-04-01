FROM ubuntu:18.04
LABEL maintainer="qiang@cpan.org"

ENV COMPOSER_HOME /tmp

RUN set -x \
    && apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y -q --no-install-recommends \
        php-cli \
        ca-certificates \
	\
    && rm -rf /var/lib/apt/lists/* \
	&& EXPECTED_CHECKSUM="$(php -r 'copy("https://composer.github.io/installer.sig", "php://stdout");')" \
	&& php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
	&& ACTUAL_CHECKSUM="$(php -r "echo hash_file('sha384', 'composer-setup.php');")" \
	\
	&& if [ "$EXPECTED_CHECKSUM" != "$ACTUAL_CHECKSUM" ]; then \
		>&2 echo 'ERROR: Invalid installer checksum' \
		&& rm composer-setup.php \
		&& exit 1; \
	fi \
	\
	&& php composer-setup.php --install-dir=/usr/bin --filename=composer --quiet \
	&& RESULT=$? \
	&& rm composer-setup.php \
	&& exit $RESULT

WORKDIR /app
