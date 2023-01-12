FROM debian:buster

RUN apt-get -y update \
	&& apt-get -y upgrade \
	&& apt-get install -y nginx openssl

COPY ./conf/default.conf /etc/nginx/conf.d/
COPY ./tools/nginx_setup.sh /var/tmp

RUN chmod +x /var/tmp/nginx_setup.sh

ENTRYPOINT [ "var/tmp/nginx_setup.sh" ]

EXPOSE 443
