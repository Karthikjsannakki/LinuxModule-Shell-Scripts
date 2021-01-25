#!/bin/bash

<<c
*******************************************************************
Author Name: Karthik J
Date: 22/01/2021
Description: Write a script to print a given number in reverse order.
Input: ./07_reverse.sh 12345
output: Reversed number – 54321
*******************************************************************
c

reverse=0
remainder=0

#condition to check the input argument 
if [ $# -eq 1 ]
then
		#condition to check the input is single/multiple digit
		if [ $@ -gt 9 ]
		then
				#Argument passed through cmd will be stored in num
				num=$1 
				#while loop iterates till $num greater than 0
				while [ $num -ne 0 ]
				do
						#Main logic to reverse the number
						remainder=`expr $num % 10`
						reverse=`expr $reverse \* 10 + $remainder`
						num=`expr $num / 10`
				done
				#prints final output which is stored in reverse
				echo Reversed number – $reverse 
		else
				#prints if arg passed is single digit
				echo Error: pass a multi-digit number
		fi
else
		#prints if No arg passed through cmd line
		echo Error: No argument passed
fi
echo #blank line
