#!/bin/bash
set -m
#echo "127.0.0.1       gateway" >> /etc/hosts
#echo "::1             gateway" >> /etc/hosts
grep -qxF '127.0.0.1       gateway' /etc/hosts || echo '127.0.0.1       gateway' >> /etc/hosts # elimiate duplicate list 
grep -qxF '::1             gateway' /etc/hosts || echo '::1             gateway' >> /etc/hosts # elimiate duplicate list
useradd -rm -d /home/ubuntu -s /bin/bash -g ubuntu -G ubuntu -u 1001 ubuntu
/usr/sbin/sshd
/usr/sbin/nginx
#ps -ax
#ss -tulpn
tail -f /dev/null
fg %1
