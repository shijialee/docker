adapt from [php composer](https://hub.docker.com/_/composer/)

* use composer -n to avoid prompt for github api token
    * see https://github.com/composer/composer/issues/5312
* host needs to bind mount composer.json/composer.lock into /app
* container workdir is set to /app
* in order to share composer cache from host to container
    * container's composer COMPOSER_HOME should be set to /tmp
    * bind mount host composer home dir into /tmp

# for private repositories
# no need for the eval line if you are connected with ssh forwarding already.
# eval $(ssh-agent); \
docker run -it --rm  \
--volume $APP_ROOT/CI3_Shares/Common:/app \
--volume $SSH_AUTH_SOCK:/ssh-auth.sock \
--env SSH_AUTH_SOCK=/ssh-auth.sock \
--volume ${COMPOSER_HOME:-$HOME/.composer}:/tmp \
--user  $(id -u):$(id -g) \
--volume /etc/passwd:/etc/passwd:ro \
--volume /etc/group:/etc/group:ro \
shijialee/php_composer_build  command
