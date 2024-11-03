#!bin/bash

#print the table of given number

echo "Enter the  number: "
read n

for a in 1 2 3 4 5 6 7 8 9 10

do
	res=`expr $n \* $a`
	echo " $res "

done



