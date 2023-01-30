#!/bin/bash

echo "Netscanner script v 0.01"
echo "Number of parameters: $#"
echo "Parameter #1 is: $1"

if (($# == 0))
then
	echo "Usage: netscanner.sh --all | --target [target]"
	exit 3

elif [ $1 == "--all" ]
then
	echo "--all key given"


elif [ $1 == "--target" ]
then
	echo "--target key given"
fi

# ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1' -- gets 'em IP addresses
