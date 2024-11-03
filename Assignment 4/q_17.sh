#!bin/bash

row=5
i=1

while [ $i -le $row ]
do
	j=1
	while [ $j -le $i ]
	do
		echo -n -e "* "
		j=`expr $j + 1`
	done
	echo " "
	i=`expr $i + 1`
done


