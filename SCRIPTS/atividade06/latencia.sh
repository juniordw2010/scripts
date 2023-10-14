#!/bin/bash

arquivo=$1

for linha in $(cat $arquivo)
do 
	echo "$linha $(ping -f -c 10 $linha | grep "rtt" | cut -d '/' -f 5)ms"
done | sort -n -k 2
