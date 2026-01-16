# Dry-running iptables-legacy rulesets

*Warning*: only for Linux 64bit systems so far !

This can be performed locally or on a remote machine (Linux firewall):


- Retrieve the iptables bash script: ```scp <remote>:/etc/network/iptables.sh .```
- Adjust the TARGETSCRIPT variable on top of ```iptwrap.bash```.
- Ruleset dry-run: ```iptwrap.bash --dry-run```
- Ruleset application: ```iptwrap.bash --apply```
- Dry-run then apply if success: ```iptwrap.bash```

Build/Rebuild:
```
make clean
make
```

