#!/bin/bash

echo -e "1.Date\n2.Cal\n3.Ls\n4.Pwd\n5.Exit\n"

read -p "Enter the choice : " ch

case $ch in
1)
	date
	;;

2)
	cal
	;;
3)
	ls
	;;
4)
	pwd
	;;
5)
	echo "EXIT"
	exit 0
	;;
*)
	echo "Invalid choice."
	;;
esac
