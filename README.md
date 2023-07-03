# Dry-running iptables-legacy rulesets bash script

*Warning*: only for Linux 64bit systems so far !

This can be performed locally or on the remote machine/firewall.

Locally:
	- scp <firewall>:/etc/network/iptables.sh .
	- Adjust the TARGETSCRIPT variable on top of *iptwrap.sh*.
	- Ruleset dry-run: **iptwrap.sh --dry-run**
	- Ruleset application: **iptwrap.sh --apply**
	- Dry-run then apply if success: **iptwrap.sh**

On the firewall:
	- Copy *iptwrap.sh* to */etc/network*.
	- Adjust the TARGETSCRIPT variable on top of *iptwrap.sh*.
	- Ruleset dry-run: **iptwrap.sh --dry-run**
	- Ruleset application: **iptwrap.sh --apply**
	- Dry-run then apply if success: **iptwrap.sh**

Rebuild:
	- **make clean**
	- **make**

