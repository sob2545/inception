#!/bin/bash

sleep 4

if [ ! -f /etc/ssl/certs/nginx.crt ]; then
	openssl req -x509 -days 365 -nodes -newkey rsa -keyout /etc/ssl/private/nginx.key -out /etc/ssl/certs/nginx.crt -subj "/C=KR/ST=Seoul/O=42Seoul"
fi

exec nginx -g 'daemon off;'