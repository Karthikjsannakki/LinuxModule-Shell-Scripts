#!/bin/bash

<<c
*******************************************************************
Author Name: Karthik J
Date: 22/01/2021
Description: Write a script to compare larger integer values from a 'n' number of arguments using command line arguments
Input: 5 6 8 4 2 1
output: Largest value is 8
*******************************************************************
c

#assigning $1 to variable large
larg=$1

#Condition to check wheather argument passed through command line
if [ $# -ge 1 ]
then
		#This loop lists all arguments will passes to i and starts iteration
		for i in $@
		do
				#condition to check largest number		
				if [ $i -ge $larg ]
				then
						larg=$i
				fi
		done #loop termination
		echo #blank line
		echo Largest value is $larg #prints largest number
else
		echo #blank line
		echo Error: No arguments passed
fi




