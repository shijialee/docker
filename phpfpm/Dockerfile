FROM shijialee/phpfpm_base:3c1d767cab76
LABEL maintainer="qiang@cpan.org"

COPY fpm/   /etc/php/7.2/fpm/pool.d/

EXPOSE 9000

CMD ["php-fpm7.2"]
