FROM ubuntu:18.04
LABEL maintainer="qiang@cpan.org"

RUN apt-get update && apt-get install --no-install-recommends -y -q \
        nginx \
        && rm -rf /var/lib/apt/lists/* \
        && mkdir /docker-entrypoint.d

# see https://github.com/nginxinc/docker-nginx/blob/master/stable/debian/Dockerfile
# XXX need to make sure .sh file +x
COPY docker-entrypoint.sh /
COPY 30-tune-worker-processes.sh /docker-entrypoint.d
ENTRYPOINT ["/docker-entrypoint.sh"]

COPY nginx.conf /etc/nginx/nginx.conf
COPY log.conf /etc/nginx/conf.d/log.conf

EXPOSE 80

STOPSIGNAL SIGQUIT

CMD ["nginx", "-g", "daemon off;"]
