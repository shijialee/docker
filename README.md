docker files for building services

* `cd dev && docker-compose up`
  * run phpfpm_backend container behind nginx_load_balancer

all images are based on ubuntu 18.04 in order to keep the image maintainance simple.

* dev - docker compose development environment
* nginx - build nginx
* nginx_load_balancer - build nginx load balancer
* phpfpm_backend_base - installed packages required by phpfpm backend
* phpfpm_backend - phpfpm backend
* php_composer - build php composer binary
* php_composer_build - multi-stage composer install/update
* tools - installed some common utils, such as vim, ping, nslookup etc
