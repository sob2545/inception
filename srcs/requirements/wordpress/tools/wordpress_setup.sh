#!bin/bash

if [ ! -d "/var/www" ];then
	mkdir -p /var/www
	tar -xzf /tmp/wordpress.tar.gz -C /var/www
	rm -rf /tmp/tmp/wordpress.tar.gz

	mv -f /tmp/wp-config.php /var/www/wordpress/
	chown -R www-data:www-data /var/www/wordpress/

	mv -f /tmp/www.conf /etc/php7.3/fpm/pool.d/www.conf

	mkdir -p /run/php/
fi

sleep 3
echo "wordpress begin!"

exec "$@"