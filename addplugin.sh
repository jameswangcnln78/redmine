#!/bin/bash
PLUGIN_DIR=/home/james/redmine/redmine/plugins
PLUGIN_URL=$1
cd $PLUGIN_DIR
git clone $PLUGIN_URL
sudo docker restart redmine-app
