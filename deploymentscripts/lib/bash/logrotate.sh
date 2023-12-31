#!/bin/bash

## This script enables logrotate for Haven logs
sudo echo "/var/www/haven/log/*.log {" >> /etc/logrotate.conf
sudo echo "  daily" >> /etc/logrotate.conf
sudo echo "  missingok" >> /etc/logrotate.conf
sudo echo "  rotate 7" >> /etc/logrotate.conf
sudo echo "  notifempty" >> /etc/logrotate.conf
sudo echo "  copytruncate" >> /etc/logrotate.conf
sudo echo "}" >> /etc/logrotate.conf

## This section enables size limits for the systemd journal logs
sudo echo "SystemMaxUse=50M" >> /etc/systemd/journald.conf
sudo service systemd-journald restart
