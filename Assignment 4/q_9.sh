#!bin/bash

echo "Enter the number"
read n
i=1
until [ $n -eq 1 ]
do
	i=`expr $i \* $n`
	n=`expr $n - 1`
done

echo "$i"
