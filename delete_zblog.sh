#!/bin/bash

# author: zack
# date: 2016-08-03 09:31:00

# CONFIGURATION
basedir=`readlink -f $(dirname $0)`
webdir=/web/www/zblog
domaindir=$webdir/$1
nginxdir=/usr/local/nginx/conf/vhost

# DELETE NGINX CONFIGURATION AND WEB DIR
mv -f ${nginxdir}/${1}.conf /tmp
rm -rf $domaindir

# DROP DATABASE AND DB USER
mysql -uroot -pAMIDN-root-_-315fafa -e"drop database \`$1\`;"
mysql -uroot -pAMIDN-root-_-315fafa -e"drop user '$1'@'localhost';"

# FINISH
echo "domain delete success"  > ${basedir}/cmdresult.txt
echo "domain delete success"
