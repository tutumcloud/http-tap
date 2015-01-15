#!/bin/bash

sed -i "s/{{ FRONTEND_BIND }}/${FRONTEND_BIND}/g" /etc/haproxy/haproxy.cfg
sed -i "s/{{ BACKEND_SERVER }}/${BACKEND_SERVER}/g" /etc/haproxy/haproxy.cfg

echo "=> Using haproxy.cfg:"
cat /etc/haproxy/haproxy.cfg

echo "=> Launching HAProxy"
exec /usr/sbin/haproxy -f /etc/haproxy/haproxy.cfg -db