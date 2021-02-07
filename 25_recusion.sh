#!/bin/bash

<<c
*******************************************************************
Author Name: Karthik J
Date: 01/02/2021
Description: Use a recursive function to print each argument passed 
to the function.
Sample execution: -
1. ./26_recursion.sh 5 2 4 1 n kj i
5
2
4
1
n
kj
i
2. ./26_recursion.sh
Error : Pass the arguments through command line.
*******************************************************************
c

#To check arguments through command line.
if [ $# -ge 2 ]
then
		#function
		function recur
		{
				#Prints first position of the array
				echo $1
				#Works till array reaches to one
				if [ ${#arr[@]} -eq 1 ]
				then
						exit
				fi
				#Will remove first element every time
				arr=(`echo $@ | cut -d " " -f1 --complement`)
				#Function calls inside function
				recur ${arr[@]}

		}
		#Function call by passing arg 
		recur $@
else
		#Prints statement is arguments not passed through cmd line
		echo Error : Pass the arguments through command line.
fi
