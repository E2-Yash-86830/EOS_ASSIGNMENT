#!bin/bash                                                                                                                                           
 
 #leap year
 
 echo -e -n "Enter the Year: "
 read year
 
 #if [ (($((year%400)) -eq 0) -o ($((year%100)) -ne 0) -a ($((year%4)) -eq 0)) ]
 if [ `expr $year % 400` -eq 0 -o `expr $year % 100` -ne 0 -a `expr $year % 4` -eq 0 ]
 then
     echo "leap year"
 else
 echo "non leap"
 fi

