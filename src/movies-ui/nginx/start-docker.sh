#!/bin/sh
envsubst < /etc/nginx/nginx.template > /etc/nginx/nginx.conf
nginx -g "daemon off;error_log /dev/stdout debug;"