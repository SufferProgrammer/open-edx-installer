#!/bin/bash

echo '[*]Installing system requirements please wait...'
apt-get update

apt-get install python python-dev python-setuptools build-essential libmysqlclient-dev
easy_install pip==8.1.2
pip install --upgrade pip
pip install --upgrade wsgiref
cd /var/tmp
git clone https://github.com/edx/configuration.git
cd configuration/
pip install -r requirements.txt
echo '[*]Installing system done please start run.sh for running application...'
