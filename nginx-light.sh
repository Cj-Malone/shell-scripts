#!/usr/bin/env bash

NGINX_CONF=${1:-/etc/nginx/conf.d/keepawayfromfire.co.uk.conf}

DARK_RULE="add_header Default-Style Dark;"
LIGHT_RULE="add_header Default-Style Light;"

sed -i "s/$DARK_RULE/$LIGHT_RULE/" $NGINX_CONF
systemctl reload-or-try-restart nginx

