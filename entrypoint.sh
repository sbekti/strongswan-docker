#!/bin/sh -e

exec /usr/sbin/ipsec start --nofork "$@"
