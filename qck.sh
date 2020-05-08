#!/bin/bash


echo "Enter the ip you wish to scan"
read theip

echo "do you want to scan in TCP or UDP (T/U)"
read code

if [[ $code == "t" ]] || [[ $code == "T" ]]; 
then	
nmap -T4 -A -p- $theip

elif [[ $code == "u" ]] || [[ $code == "U" ]]
then 
nmap -T4 -A -p- -sU $theip

else
echo "please enter U or T to specify which scan you want"

fi
