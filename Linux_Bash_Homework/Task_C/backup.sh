#!/bin/bash


function print_usage_function () {
        echo "Usage: backup.sh [source_dir] [destination_dir]"
}


function check_directories () {
	echo "checking directories"
	if [ -d "$1" ]; then
		echo "Good, source directory exists";
	else
		echo "Source directory $1 does not exist or is a file! Unable to continue..."
		exit 3
	fi

	if [ -d "$TARGET_DIR" ]; then
		echo "Good, target directory exists too!"
	else
		echo "Target directory $2 does not exist or is a file! Unable to continue..."
		exit 3
	fi
	
}


echo "Backup script v 0.01"
echo "Number of parameters: $#"
echo "Parameter #1 is: $1"
echo "Parameter #2 is: $2"
echo -e "\n\n"

SOURCE_DIR=$1
TARGET_DIR=$2

if [[ $# != 2 ]]  ; then
	print_usage_function;
	exit 3
fi

check_directories "$1" "$2"

# ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1' -- gets 'em IP addresses
