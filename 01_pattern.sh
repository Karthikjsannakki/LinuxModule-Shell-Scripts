#!/bin/bash

<<c
*******************************************************************
Author Name: Karthik J
Date: 21/01/2021
Description: Read 'n' and generate a pattern
Input: 4
output: 
1
1 2
1 2 3
1 2 3 4
*******************************************************************
c

#reads the input given from the user & stores it variable val
read -p "Enter the value: " val 

#outer loop to handle number of rows 
for i in `seq $val` 
do
	#inner loop to handle number of columns
	#values changing acc. to outer loop
	for j in `seq $val`
	do
		if [ $i -ge $j ] #checks the condition to satisfy requirement
		then
			echo -n "$j " #do not output the trailing newline
		fi
	done #2nd for loop termination
	echo #prints output
done #1st for loop termination
			
