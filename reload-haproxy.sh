#!/bin/sh

/usr/sbin/haproxy -f /etc/haproxy.cfg -p /var/run/haproxy.pid -sf $(< /var/run/haproxy.pid)
