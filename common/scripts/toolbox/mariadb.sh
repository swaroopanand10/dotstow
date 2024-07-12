#!/usr/bin/env bash

yay -S mariadb
mariadb-install-db --user=mysql --basedir=/usr --datadir=/var/lib/mysql

# now start the server with -> sudo /usr/bin/mariadbd-safe --datadir='/var/lib/mysql'
# and now can access the frontend part with -> mariadb
