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

	FILENAME=$1

	echo "1. From which ip there were most requests?"
	echo -n "Most popular request IP: "
	grep '"GET ' < $FILENAME | cut -f 1 -d ' ' | uniq -c | sort -nr | head -n 1 | cut -c 9-


	echo -e "\n2. What is the most requested page?"
	echo -n "Most requested page:"
	grep '"GET ' < $FILENAME | cut -d ' ' -f 7 | sort | uniq -c | sort -nr | head -n 1 | cut -c 9-
# We filter only GET requests, not POST!

	echo -e "\n3. How many requests were there from each ip?"
	SHOW_TOP_IPS=5
	#We can answer this question for ALL the IPs -- there may be hundreds of them! 
	#If you want, set SHOW_TOP_IPS=9999999
	echo "Top $SHOW_TOP_IPS IPs:" 
	grep '"GET' < $FILENAME | cut -d ' ' -f 1 | sort | uniq -c | sort -nr | head -n $SHOW_TOP_IPS

}


# Begin of main code

echo "Apache Log Analyzer script v 0.01"
echo "Number of parameters: $#"
echo "Parameter #1 is: $1"

if [[ $# -eq  0 || $# -gt 1 ]]; then
	print_usage_function;
	exit 3
fi

process_log $1

# ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1' -- gets 'em IP addresses
