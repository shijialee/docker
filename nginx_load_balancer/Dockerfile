FROM shijialee/nginx:c5305658bada
LABEL maintainer="qiang@cpan.org"

# can be resued in nginx
COPY cache.conf         /etc/nginx/snippets/cache.conf
COPY restrictions.conf  /etc/nginx/snippets/restrictions.conf
COPY php_location.conf  /etc/nginx/snippets/php_location.conf

# can only include once in nginx
#COPY vhost.conf         /etc/nginx/conf.d/vhost.conf
COPY upstream.conf      /etc/nginx/conf.d/upstream.conf

EXPOSE 80
