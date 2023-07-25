FROM mysql/mysql-server:latest

RUN mkdir /var/www
RUN mkdir /var/www/html
RUN mkdir /var/www/html/mysql

COPY ./Docker/doa_db_bak.sql  /var/www/html/mysql/doa_db_bak.sql
COPY ./Docker/db_restore.sh  /var/www/html/mysql/db_restore.sh

COPY ./Docker/init.sql /data/application/init.sql

COPY ./Docker/mysqld.cnf /etc/my.cnf




WORKDIR /var/www/html/mysql/


# RUN cd /var/www/html/mysql/

# CMD  ["sh", "/var/www/html/mysql/db_restore.sh"]
CMD  ["/bin/sh -c", "/var/www/html/mysql/db_restore.sh"]

# RUN mysql -u root -p doa_db2 <  /var/www/html/mysql/doa_db_bak.sql
