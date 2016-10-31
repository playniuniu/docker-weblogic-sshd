#!/bin/bash
set -e

# prepare authorized_keys
if [ -d "/sshkey/" ]; then
    mkdir -p /u01/oracle/.ssh/ \
    && chmod 700 /u01/oracle/.ssh/ \
    && cp /sshkey/* /u01/oracle/.ssh/
fi

if [ ! -f /u01/oracle/.ssh/id_rsa ]; then
    ssh-keygen -t rsa -f /u01/oracle/.ssh/id_rsa -N ''
fi

echo "Starting supervisor..."
exec /usr/bin/supervisord -n -c /u01/oracle/docker-config/supervisord.conf