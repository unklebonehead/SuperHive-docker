#!/bin/bash

tar -xvzf superhive.tar.gz -C /var/www

# need to figure out how to restart nginx. This container does not have systemd. /etc/init.d/nginx restart and service.nginx restart both fail.