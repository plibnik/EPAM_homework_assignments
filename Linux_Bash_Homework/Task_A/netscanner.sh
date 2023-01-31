#!/bin/bash


function print_usage_function () {
        echo "Usage: netscanner.sh --all | --target [target]"
}

function all_function () {
	echo "All function called"
	SUBNETS_NUMBER=0;
	SUBNETS_NUMBER=` ip route | cut -d ' ' -f 1 | grep "/" |  wc -l `
	echo "Subnets number is $SUBNETS_NUMBER";
	if [[ $SUBNETS_NUMBER == 0 ]]; then
		echo "Cannot execute, no subnets found!";
		exit 3
	fi
	WORKING_SUBNET= ` ip route | cut -d ' ' -f 1 | grep "/" | head -n 1 `;
	echo "Working with subnet: $WORKING_SUBNET"
	echo "I'd run Nmap on it or try a for cycle, but scanning networks is against EPAM policy! Our lecturer said that!"
	echo "Thanks for your attention"
	exit 0
}

function target_function () {
	TARGET_IP=$1
	echo "Target function called"
	echo -e "\n I'd call a nmap port scan on $TARGET_IP, but it's illegal!"
	echo "Sorry. Terminating the program"
	exit 0
}


echo "Netscanner script v 0.01"
echo "Number of parameters: $#"
echo "Parameter #1 is: $1"

if (($# == 0)); then
	print_usage_function;
	exit 3

elif [ $1 == "--all" ]; then
	echo "--all key given"
	all_function;
	exit 0;

elif [ $1 == "--target" ]; then
	echo "--target key given"
	if [ $# == 2 ]; then
		echo "Good, 2 parameters"
		target_function $2
	else
		echo "--target key requires specification of target: ./netscanner.sh --target 10.1.2.3"
	fi
fi

# ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1' -- gets 'em IP addresses
