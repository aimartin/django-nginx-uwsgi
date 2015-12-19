#!/bin/bash

nginx
uwsgi --emperor /var/www/uwsgi/ --uid nginx --gid nginx >> /var/www/nginx/log/uwsgi-daemon.log
