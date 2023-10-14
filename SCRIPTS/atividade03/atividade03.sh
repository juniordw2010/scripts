#!/bin/bash

case $1 in

1)
	grep -E -v 'sshd' auth.log;;
2)
	grep -E 'sshd.*opened.*user j' auth.log;;
3)
	grep -E 'sshd.*Disconnect.*root' auth.log;;
4)
	grep -E 'Oct (11|12).*sshd.*opened' auth.log;; 
esac
