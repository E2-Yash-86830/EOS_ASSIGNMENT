#!bin/bash

echo "Enter the 2 File Names: "
read file1
read file2

if [ -z $file1 ]
then 
	echo "File 1 is empty"
	exit
elif [ -z $file2 ]
then
	echo "File 2 is empty"
	cat $file1 | rev | cat > $file2 
else
	cat $file1 | rev | cat >> $file2 
fi
cat $file2

