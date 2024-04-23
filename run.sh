#!/bin/bash
set -m
echo "127.0.0.1       gateway" >> /etc/hosts
echo "::1             gateway" >> /etc/hosts
useradd -rm -d /home/ubuntu -s /bin/bash -g ubuntu -G ubuntu -u 1001 ubuntu
/usr/sbin/sshd
/usr/sbin/nginx
#ps -ax
#ss -tulpn
tail -f /dev/null
fg %1