#!bin/bash

echo "Enter the Number"
read n

if [ $n -eq 0 ]
then 
	echo "$n is nor positive nor negative"
elif [ $n -lt 0 ]
then 
	echo "$n is negative"
else
	echo "$n is positive"

fi
