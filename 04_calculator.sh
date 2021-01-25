<<c
*******************************************************************
Author Name: Karthik J
Date: 22/01/2021
Description: Write a script for arithmetic calculator using command line arguments
Input: ./05_arithmatic_calc.sh 25 + 41
output: 67
*******************************************************************
c

#!/bin/bash

#Condition to check wheather 3 arguments is passed through command line
if [ $# -eq 3 ]
then
		#reads the operator to perform required task
		case $2 in
				+)echo "$1 $2 $3" | bc
						;;
				-)echo "$1 $2 $3" | bc
						;;
				\*)echo "$1 $2 $3" | bc
						;;
				/)echo "$1 $2 $3" | bc
						;;
				*)echo error
		esac #switch case termination

#Condition to satisfy that the argument passed through command line as per requirement
elif [ $# -eq 3 -o $# -eq 2 -o $# -eq 1	]
then
		echo #blank line
		echo Error:Please pass 3 arguments.
		echo "Usage:./05_arithmatic_calc 2.3 + 6.7"
else
		echo #blank line
		echo Please pass the arguments through command line!!!
fi



