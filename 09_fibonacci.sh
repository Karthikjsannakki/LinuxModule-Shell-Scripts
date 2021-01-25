#!/bin/bash
<<c
*******************************************************************
Author Name: Karthik J
Date: 22/01/2021
Description: Write a script to read 'n' and generate Fibonacci numbers <= n
Input: Enter limit for fib series: 10
output: 0, 1, 1, 2, 3, 5, 8
*******************************************************************
c

a=0
b=1

#reads the user input value and stores it in num
read -p "Enter limit for fib series: " num

#checks wheather input entered is Positive or negative
if [ $num -ge 0 ]
then
		#checks wheather input is >= 1
		if [ $num -ge 1 ]
		then
				echo #blank line
				#prints 0 1 by default
				echo The fibonacci series for $num is:
				echo -n "$a $b "

				#generates sequence from 2 upto input num passes to i for iteration
				for i in `seq 2 $num` 
				do
						#logic for adding numbers one by one
						sum=`expr $a + $b`
						#logic which helps to print series <= num
						exp=`echo "$sum/$num" | bc`
						#Condition to print fib series < input num 
						if [ $exp -lt 1 ]
						then
								echo -n "$sum " 
						fi
						#swapping
						a=$b
						b=$sum
				done
				echo #blank line
		else
				echo #blank line
				#default print statement if num is equal to 0
				echo -e "The fibonacci series for $num is:\n$num" #prints fib series
		fi
else
		echo #blank line
		echo Error : Please enter only positive numbers...
fi
echo #blank line
