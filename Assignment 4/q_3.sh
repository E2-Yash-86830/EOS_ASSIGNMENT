#!bin/bash

echo "Enter the name of the directory : "
read file

if [ -e $file ]
then
	if [ -d $file ]
		then
			echo "IT IS THE DIRECTORY AND ITS CONTENT ARE : "
				ls $file
	elif [ -f $file ]
		then
			echo "IT IS THE FILE AND ITS CONTENT ARE : "
				cat $file
			if [ -x $file ]
			then
				echo "FILE IS EXICUTABLE "
			fi
		fi
else
	echo "not exists "
fi	
