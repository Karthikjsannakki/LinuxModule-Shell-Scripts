#!/bin/bash
<<c
*******************************************************************
Author Name: Karthik J
Date: 25/01/2021
Description: Write a script to perform arithmetic operation on 
digits of a given numberdepending upon the operator.
Input: ./09_operator_dependent.sh 1234+
output: Addition of Given number is 10
*******************************************************************
c

#To check argument passed through cmd line
if [ $# -eq 1 ]
then
	#Stores argument to variable var
	var=$1
	#Total length of argument 
	n=${#var}
	#Extracting operator from the argument
	n=$((n-1))
	#Extracted operator will be stored in variable oper
	oper=${var:n:1}
	#Extracted numbers will be stored in variable num
	num=${var:0:n}
	#Pre-Initialization
	sum=0;sub=2;mul=1

	#According to the extracted operator action takes place
	# $((n-1)) will helps in iteration by excluding operator
	case $oper in
		+)for i in `seq 0 $((n-1))` 
		do
			dig=${var:i:1}
			sum=`expr $sum + $dig`
		done
		echo #Blank line
		echo Addition of Given number is $sum
		echo #Blank line
			;;
		-)for i in `seq 0 $((n-1))`
		do
			dig=${var:i:1}
			sub=`expr $sub - $dig`
		done  
		echo #Blank line 
		echo Subtraction of Given number is $sub
		echo #Blank line
			;;
		# if in case operator passed as 1234x
 		x)for i in `seq 0 $((n-1))`
		do
			dig=${var:i:1}
			mul=`expr $mul \* $dig`
		done
		echo #Blank line
		echo Multiplication of Given number is $mul
		echo #Blank line
			;;
		\*)for i in `seq 0 $((n-1))`
		do
			dig=${var:i:1}
			mul=`expr $mul \* $dig`
		done
		echo #Blank line
		echo Multiplication of Given number is $mul
		echo #Blank line
			;;
		#Triggers if argument passed without operator
		*)echo Please pass the operator!!!
	esac 
else
	echo #Blank line
	#Triggers if argument is not with cmd
	echo Error : Please pass the argument.
	echo Usage : ./09_operator_dependent.sh 2345+
	echo #Blank line
fi
