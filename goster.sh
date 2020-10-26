#!/bin/bash
echo "use -h for description of the script"
echo -n "Do you have go and gobuster installed correctly (y/n)"
read response

if [[ "$response" == "y" ]]; 
then

gobuster dir -u $1 -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -t 150 

elif [[ "$1" == "-h" || "$1" == "-help" ]];
then
	echo "This script runs gobuster with default kali wordlist on a site with 150 threads"
	echo -e "Format example : goster.sh (website)"
	echo -e "Example : goster.sh google.com"

else

echo "Please  go to golang.org to install go"
echo -e "Go to github.com/OJ/gobuster to install gobuster"

fi
