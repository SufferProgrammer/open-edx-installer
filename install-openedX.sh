#!/bin/bash

echo '[*]Installing system requirements please wait...'
apt-get update

apt-get install python python-dev python-setuptools
dpkg -i mysqlcon.deb
apt-get update --fix-missing

easy_install pip==8.1.2
pip install --upgrade pip
cd package
pip install -r requrements.txt

echo '[*]Installing system done please start run.sh for running application...'
