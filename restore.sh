#!/bin/bash
## clear old data. Make sure you have backup the data you want and use the tar file as first argument of this script
REDMINE_DATA=/home/james/redmine/redmine
MYSQL_DATA=/home/james/redmine/mysql
rm -rf $REDMINE_DATA
mkdir $REDMINE_DATA
sudo rm -rf $MYSQL_DATA
mkdir $MYSQL_DATA

## restore data
sudo docker-compose down
sudo docker-compose up db
sudo docker-compose run redmine  /sbin/entrypoint.sh app:backup:restore BACKUP=$1

## restart services and please wait for about 2 miniutes for first start up
sudo docker-compose down
sudo docker-compose up -d
