#!/bin/bash

<<c
*******************************************************************
Author Name: Karthik J
Date: 22/01/2021
Description: Write a script for addition of two numbers for real numbers
Input: 10 20
output: The Addition of 10 and 20 is: 30
*******************************************************************
c

#prints below statement on to the terminal 
echo -e "Enter the numbers to addition:"

#reads input from the user and stores it in respective variable num1,num2
read  num1 num2

#addition takes place here and result will be stored in sum
sum=`echo "$num1 + $num2" | bc`

#blank line
echo

#prints the result
echo The Addition of $num1 and $num2 is: $sum
