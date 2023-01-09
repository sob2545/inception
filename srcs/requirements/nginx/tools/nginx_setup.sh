#!/bin/bash

if [ ! -f /etc/ssl/certs/nginx.crt ]; then
	openssl req -x509 -days 365 -nodes -keyout /etc/ssl/private/nginx.key -out /etc/ssl/certs/nginx.crt -subj "/C=US/ST=California/L=San"
fi

exec "$@"