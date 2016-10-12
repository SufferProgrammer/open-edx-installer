#!/bin/bash

echo '[*]Starting Open edX application...'

cd /var/tmp/configuration/playbooks/ && ansible-playbook -c local ./edx_sandbox.yml -i "localhost,"
