#!bin/bash

if [ ! -f "/var/wordpress/www/wp-config.php" ];then
	tar -xzf /tmp/wordpress.tar.gz -C /var/www
	rm -rf wordpress.tar.gz
	mkdir -p /var/www


	cp -rf ./tmp/wp-config.php /var/www/wordpress/
	chown -R www-data:www-data /var/www/wordpress/

	echo "env[MYSQL_DATABASE] = \$MYSQL_DATABASE" >> /etc/php/7.3/fpm/pool.d/www.conf
	echo "env[MYSQL_USER] = \$MYSQL_USER" >> /etc/php/7.3/fpm/pool.d/www.conf
	echo "env[MYSQL_PASSWORD] = \$MYSQL_PASSWORD" >> /etc/php/7.3/fpm/pool.d/www.conf
	echo "listen = wordpress:9000" >> /etc/php/7.3/fpm/pool.d/www.conf

	mkdir -p /run/php/
fi

sleep 3
echo "wordpress begin!"

exec php-fpm7.3 -F
