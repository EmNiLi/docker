#!/bin/bash

set -e

chown -R mysql:mysql /var/lib/mysql

if [ ! -d /var/lib/mysql/mysql ]; then
    pass="`sed -n 's/^[     ]*password *= *// p' /etc/mysql/debian.cnf | head -n 1`"
    initfile='/tmp/init.sql'

    cat > "$initfile" <<-SQL
        DROP DATABASE IF EXISTS test;
        DELETE FROM mysql.user;
        CREATE USER 'root'@'%' IDENTIFIED BY '$MY_ROOT';
        GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;
        CREATE USER 'debian-sys-maint'@'localhost' IDENTIFIED BY '$pass';
        GRANT ALL PRIVILEGES ON *.* TO 'debian-sys-maint'@'localhost';
        FLUSH PRIVILEGES;
SQL

    mysqld --user=mysql --initialize-insecure --init-file="$initfile"
fi

mysqld --user=mysql
