FROM debian:buster

RUN apt-get update -y \
&& apt-get upgrade -y \
&& apt-get install -y mariadb-server mariadb-client systemd

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./tools/mariadb_setup.sh /tmp/mariadb_setup.sh
COPY ./tools/wpdb_dump.sql /tmp/

RUN chmod +x /tmp/mariadb_setup.sh

ENTRYPOINT [ "sh", "/tmp/mariadb_setup.sh" ]

EXPOSE 3306
