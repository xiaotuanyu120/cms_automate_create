#!/bin/bash

# author: zack
# date: 2016-07-28 11:07:00

# CONFIGURATION
basedir=`readlink -f $(dirname $0)`
webdir=/web/www/zblog
nginxdir=/usr/local/nginx/conf/vhost
sql_source=${basedir}/zblog14.sql
web_user=www
web_group=www

# GET ARGS
for args in $@
do
    echo "$args"| grep -q "domain:" && domain=${args#*\:}
    echo "$args"| grep -q "webname:" && webname=${args#*\:}
    echo "$args"| grep -q "indexname:" && indexname=${args#*\:}
    echo "$args"| grep -q "keywords:" && keywords=${args#*\:}
    echo "$args"| grep -q "description:" && description=${args#*\:}
    echo "$args"| grep -q "beian:" && beian=${args#*\:}
    echo "$args"| grep -q "templateurl:" && templateurl="http://"${args#*\:}
done

# on client should use "___" replace " ", and here to resume it back
webname=${webname//___/ }
keywords=${keywords//___/ }
description=${description//___/ }
url=www.$domain

# CHECK IF web dir OR configuration IS EXIST
# if exist, then "exit 0"
[ `grep -qr $domain $nginxdir` ] || [ -d ${webdir}/$domain ] && {
    echo "web dir or nginx configuration exist" > $basedir/cmdresult.txt;
    exit
}

# COPY NGINX CONF TO SERVER
cp ${basedir}/testzblog.com.conf ${nginxdir}/$domain.conf
sed -i "s/test.com/${domain}/g" ${nginxdir}/$domain.conf


# COPY SITES FILE TO WEBDIR/DOMAIN
domaindir=${webdir}/$domain
[ -d $webdir ] || mkdir -p $webdir
unzip -q ${basedir}/wp.test.com.zip -d $domaindir

# DATABASE PREPARE
db_name=$domain
db_user=$domain
db_pass=${domain}-123
mysql -uroot -pAMIDN-root-_-315fafa -e"CREATE DATABASE IF NOT EXISTS \`$db_name\`;"
mysql -uroot -pAMIDN-root-_-315fafa $db_name < $sql_source 
mysql -uroot -pAMIDN-root-_-315fafa -e"GRANT ALL ON \`$db_name\`.* TO '$db_user'@'localhost' IDENTIFIED BY '$db_pass';"

sed -i "s/DBNAME/${db_name}/g" ${domaindir}/zb_users/c_option.php
sed -i "s/DBUSER/${db_user}/g" ${domaindir}/zb_users/c_option.php
sed -i "s/DBPASS/${db_pass}/g" ${domaindir}/zb_users/c_option.php

# CHANGE TDK HERE


# TEAMPLATE DOWNLOAD
if [ -n "$templateurl" ];then
    template_name=${templateurl##*/}
    template_dir=${basedir}/templatelist/zblog
    download_dir=${basedir}/downloadlist/zblog
    mkdir -p $download_dir $template_dir
    template_tag=${template_dir}/${template_name}.txt
    download_template=${download_dir}/$template_name
    [ ! -f "$template_tag" ] && {
        rm -f $download_template
        wget -P $download_dir $templateurl
        [ -f "$download_template" ] && echo "1" > $template_tag
    }

    [ -f "$download_template" ] && {
        template_dir=${domaindir}/zb_users/theme
        unzip -q $download_template -d $template_dir
    }
fi

# SET USER AND GROUP TO WEB DIR
chown -R ${web_user}:${web_group} $domaindir

# RESTART NGINX
service nginx reload

# TAG PROCESS FINISHED
echo "domain create success" > ${basedir}/cmdresult.txt
