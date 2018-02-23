#!/bin/bash

apt-get update > /var/log/update_script.log 2>&1
apt-get upgrade -y >> /var/log/update_script.log 2>&1
