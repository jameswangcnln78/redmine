#!/bin/bash
#
# Author: James Wang <2195162064@qq.com>
#
# Installs a bunch of themes for the redmine image
#
# Usage:
#   $ themes.sh
#

set -e

THEMES_DIR=/home/james/redmine/redmine/themes
unzip circle_theme-2_1_3.zip -d $THEMES_DIR
unzip a1_theme-2_0_0.zip -d $THEMES_DIR
