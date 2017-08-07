#!/bin/bash
sudo docker exec -it redmine-app cat /var/log/redmine/redmine/cron_rake.log

