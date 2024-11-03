#!bin/bash

echo "Enter the File name: "
read file
if [ -f $file ]
then
	stat -c %y $file
else
	echo "Invalid file name "
fi
