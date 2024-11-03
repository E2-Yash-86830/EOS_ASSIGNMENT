#!bin/bash

echo "Enter the salary: "
read salary

da_per=`echo "scale=2;40 / 100" | bc`
echo "da_per = $da_per"
hra_per=`echo "scale=2;20 / 100" | bc`
echo "hra_per = $hra_per"
da=`echo "scale=2;$salary * $da_per" | bc`
echo "$da"
hra=`echo "scale=2;$salary * $hra_per" | bc`
echo "$hra"
gross_salary=`echo "scale=2;$salary + $da + $hra" | bc`
echo "Gross_salary=$gross_salary" 
 
