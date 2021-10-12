FROM shijialee/phpfpm_base:0929001
LABEL maintainer="qiang@cpan.org"

# for dev environment
RUN usermod -u 1000 www-data && groupmod -g 1000 www-data

EXPOSE 9000

CMD ["php-fpm7.2"]
