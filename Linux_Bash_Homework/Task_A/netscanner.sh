#!/bin/bash


function print_usage_function () {
        echo "Usage: netscanner.sh --all | --target [target]"
}

function all_function () {
	echo "All function called"
}

function target_function () {
	echo "Target function called"
}


echo "Netscanner script v 0.01"
echo "Number of parameters: $#"
echo "Parameter #1 is: $1"

if (($# == 0)); then
	print_usage_function;
	exit 3

elif [ $1 == "--all" ]; then
	echo "--all key given"


elif [ $1 == "--target" ]; then
	echo "--target key given"
	if [ $# == 2 ]; then
		echo "Good, 2 parameters"
	else
		echo "--target key requires specification of target: ./netscanner.sh --target 10.1.2.3"
	fi
fi

# ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1' -- gets 'em IP addresses
