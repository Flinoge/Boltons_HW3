#!/bin/bash - 
#===============================================================================
#
#          FILE: Boltons_hw3.sh
# 
#         USAGE: ./Boltons_hw3.sh 
# 
#   DESCRIPTION: Uses AWK, and SED to create a edited version of presidents.csv
#				SED will change the date format in the presidents.csv
#				AWK will display presidents who served in 1900 and later.
#				Will have a shell script to tie it all together.
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: House of Boltons
#  ORGANIZATION: WSU
#       CREATED: 02/09/2017 11:37
#      REVISION:  ---
#===============================================================================

#set -o nounset                              # Treat unset variables as an error


usage(){
	echo "Usage $0 -c <customerDataFolder> -f <dataFile>"
	echo "Both arguments are required"
	exit 1
}

if [[ $1 == "--help" ]]
then
	usage
fi

while getopts ":c:f:" opt
do
	case $opt in
		f) dataFile=$OPTARG
			;;
		c) customerDataFolder=$OPTARG
			;;
		\?)
			usage
			;;
	esac
done

if [[ -z $dataFile || -z $customerDataFolder ]]
then usage
fi

echo "$dataFile $customerDataFolder"

exit 0

