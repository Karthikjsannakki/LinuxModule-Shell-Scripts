#!/bin/bash
<<c
*******************************************************************
Author Name: Karthik J
Date: 22/01/2021
Description: Write a script to print the length of each and every string using arrays
Input: hello hai how are you ?
output: 
Length of string (hello) – 5
Length of string (hai) – 3
Length of string (how) – 3
Length of string (are) – 3
Length of string (you) – 3
Length of string (?)- 1
*******************************************************************
c

#$@ will read strings passed through command line and stores it on i
for i in $@
do
		#prints string with string length
		#prints final output
		echo "Length of string ($i) – ${#i}"
done #loop termination
