#!/bin/bash

if [ $# -lt 1 ]; then
  echo "Please input tar file name like :restore.sh tar.file.name"
  exit 1
fi

## clear old data. Make sure you have backup the data you want and use the tar file as first argument of this script
## no need to restore  themes and plugins because they have been backup
REDMINE_DATA=/home/james/redmine/redmine
MYSQL_DATA=/home/james/redmine/mysql
sudo rm -rf $REDMINE_DATA
mkdir $REDMINE_DATA
sudo rm -rf $MYSQL_DATA
mkdir $MYSQL_DATA

## restore data
sudo docker-compose down
sudo docker-compose up -d db
sudo docker-compose run redmine  /sbin/entrypoint.sh app:backup:restore BACKUP=$1

## restart services and please wait for about 10 miniutes for first start up
sudo docker-compose down
sudo docker-compose up -d
