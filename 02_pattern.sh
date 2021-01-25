#!/bin/bash
<<c
*******************************************************************
Author Name: Karthik J
Date: 20/01/2021
Description: Read 'n' and generate a pattern
Input: 5
output: 
1
2 3 
4 5 6
7 8 9 10
*******************************************************************
c

#reads the input given from the user & stores it variable val
read -p "Enter n Value: " val

num=1

#outer loop to handle number of rows 
for i in `seq $val` 
do
		#inner loop to handle number of columns
		#values changing acc. to outer loop
		for j in `seq $val`
		do
				if [ $i -gt $j ] #checks the condition to satisfy requirement
				then
						echo -n "$num " #do not output the trailing newline
						num=`expr $num + 1`	
				fi
		done #2nd for loop termination
		echo #prints output
done #1st for loop termination
