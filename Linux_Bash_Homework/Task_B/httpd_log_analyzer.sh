#!/bin/bash


function print_usage_function () {
        echo "Usage: httpd_log_analyzer.sh [logfile]"
}

function process_log () {
	echo "Process log function called"
	if [ -f $1 ]; then
		echo "File $1 exists";
	else
		echo "File $1 does not exist. Terminating..."
		exit 3
	fi
}



echo "Apache Log Analyzer script v 0.01"
echo "Number of parameters: $#"
echo "Parameter #1 is: $1"

if [[ $# -eq  0 || $# -gt 1 ]]; then
	print_usage_function;
	exit 3
fi

process_log $1

# ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1' -- gets 'em IP addresses
