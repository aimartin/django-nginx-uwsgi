#!/bin/bash

SYSLOG=`grep -c syslog.server /etc/hosts`
if [ ${SYSLOG} -gt 0 ]; then
	cp /etc/nginx/nginx-syslog.conf /etc/nginx/nginx.conf
fi
nginx
uwsgi --emperor /var/www/uwsgi/ --uid nginx --gid nginx >> /var/www/nginx/log/uwsgi-daemon.log
