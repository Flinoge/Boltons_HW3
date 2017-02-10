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
	echo "Usage $0 -s <sedFile> -a <awkFile> =i <inputFile>"
	echo "All arguments are required"
	exit 1
}

if [[ $1 == "--help" ]]
then
	usage
fi

while getopts ":s:a:i:" opt
do
	case $opt in
		s) sedFile=$OPTARG
			;;
		a) awkFile=$OPTARG
			;;
		i) inputFile=$OPTARG
			;;
		\?) echo "Invalid arguments"
			usage
			;;
	esac
done

if [[ -z $sedFile || -z $awkFile || -z $inputFile ]]
then
	echo "Missing arguments"
	usage
fi

./$sedFile $inputFile | ./$awkFile > 20CenturyPresidents.txt

echo "Your output file will be saved in the 20CenturyPresidents.txt file"

exit 0

