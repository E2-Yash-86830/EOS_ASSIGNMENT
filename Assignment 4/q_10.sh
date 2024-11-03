#!bin/bash

a=0
b=1
i=1
c=0
echo "Enter the Number of terms"
read n
echo "1"
while [ $i -ne $n ]
do
	c=`expr $a + $b`
	a=$b
	b=$c
	echo "$b"
	i=`expr $i + 1`
done
