#!/bin/bash

if [[ "$1" == "--help" ]] || [[ "$2" == "--help" ]]
then
echo "__________________________________________________________________________________________"
echo "Descripton:"
echo "This is a simple script to navigate to a file after you move it"
echo "__________________________________________________________________________________________"
echo "Usage example :"
echo "mago test.txt ~/example_directory/cool" 

elif [[ $# -eq 1 ]]
then
echo "you are missing either the file or the desired file path"

elif [[ $# -eq 2 ]]
then
mv $1 $2
cd $2
exec bash
echo "Moved "$1" file and changed into the "$2""

else
echo "There was an error! Make sure to  add the --help flag for descriptions and example usage"
fi
