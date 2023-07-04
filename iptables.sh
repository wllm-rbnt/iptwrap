#!/bin/bash

iptables-legacy -Z
iptables-legacy -F
iptables-legacy -N test
iptables-legacy -A INPUT -s 10.0.0.1 -d 10.0.0.2 -j ACCEPT

