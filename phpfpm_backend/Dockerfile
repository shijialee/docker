FROM shijialee/phpfpm_base:2a6352bfbbdd
LABEL maintainer="qiang@cpan.org"

COPY fpm/   /etc/php/7.2/fpm/pool.d/

# prepare fpm logging
RUN mkdir /var/log/php7.2-fpm && \
    touch   /var/log/php7.2-fpm/api.log && \
    chown www-data.www-data /var/log/php7.2-fpm/*.log

EXPOSE 9000

CMD ["php-fpm7.2"]
