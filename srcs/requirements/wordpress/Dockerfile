FROM debian:buster

RUN apt-get update -y \
&& apt-get upgrade -y \
&& apt-get -y install \
php7.3 \
php-fpm \
wget \
tar \
php-mysql

COPY ./conf/wp-config.php /tmp/wp-config.php
COPY ./tools/wordpress_setup.sh /tmp

RUN	wget -O /tmp/wordpress.tar.gz "http://wordpress.org/latest.tar.gz"

RUN chmod +x /tmp/wordpress_setup.sh

ENTRYPOINT [ "/tmp/wordpress_setup.sh" ]

EXPOSE 9000
