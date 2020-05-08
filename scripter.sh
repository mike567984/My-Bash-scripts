#!/bin/bash

if [[ "$2" == "-u" ]] ||
[[ "$2" == "-U" ]] ||
[[ "$2" == "-user" ]] ||
[[ "$2" == "-USER" ]]; 
then 
	chmod u+x $1

	echo "The script $1 can be run by users only"
elif [[ "$2" == "-a" ]] || 
[[ "$2" == "-A " ]] ||
[[ "$2" == "-all" ]] ||
[[ "$2" == "-ALL" ]];
then
	chmod a+x $1   
	echo "The script $1 be run by everyone"

elif [[ "$2" == "-u" ]] && [[ "$3" == "-m" ]]
then
	
while IFS= read -r line
do
	$line > touch $line
	chmod u+x $line
		
done 

else
echo "please enter -u or -a to change who can execute this file"

fi

