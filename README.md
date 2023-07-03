# Dry-running iptables-legacy rulesets

*Warning*: only for Linux 64bit systems so far !

This can be performed locally or on a remote machine (Linux firewall):


- Retrieve the iptables bash script: ```scp <remote>:/etc/network/iptables.sh .```
- Adjust the TARGETSCRIPT variable on top of ```iptwrap.sh```.
- Ruleset dry-run: ```iptwrap.sh --dry-run```
- Ruleset application: ```iptwrap.sh --apply```
- Dry-run then apply if success: ```iptwrap.sh```

Build/Rebuild:
```
make clean
make
```

