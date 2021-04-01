# Ubuntu 18.04 based nginx image

Adapted from official [https://hub.docker.com/_/nginx(nginx) repo.

* tune worker_processes based on cpu with env `NGINX_ENTRYPOINT_WORKER_PROCESSES_AUTOTUNE`
  * `docker run -p 80:8080 -e NGINX_ENTRYPOINT_WORKER_PROCESSES_AUTOTUNE=1  --rm c1_nginx`
  * `docker exec elegant_bhaskara cat /etc/nginx/nginx.conf`
* custom nginx.conf
* json log format
