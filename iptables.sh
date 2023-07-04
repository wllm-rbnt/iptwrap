#!/bin/bash

SRC=10.0.0.1
DST=10.0.0.2

iptables-legacy -Z
iptables-legacy -F
iptables-legacy -N test
iptables-legacy -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
# [...]
# very large ruleset
# [...]
iptables-legacy -A INPUT -m state --state NEW -p tcp --dport 22 -s ${SRC} -d ${DST} -j ACCEPT

