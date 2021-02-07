#!/bin/bash

<<c
*******************************************************************
Author Name: Karthik J
Date: 28/01/2021
Description: WAS to calculate the BMI.
              weight(kg)
BMI = -------------------------------
          height(m) * height(m)

Then display the following information.
Underweight: less than 18.5
Normal: between 18.5 and 24.9
Overweight: between 25 and 29.9
Obese: 30 or greater

Sample execution:
Ex:1 ./04_BMI.sh
Enter the weight in Kg : 45.5
Enter the height in meters : 1.5
Your Normal
*******************************************************************
c

#Prints statement reads value stores it to weight
read -p "Enter the weight in kg : " weight

#Prints statement reads value stores it to height
read -p "Enter the height in meters : " height

#Multiplying height 2 times as per formula
height=`echo "$height*$height" | bc`

#formula of bmi Acc to data
bmi=`echo "$weight/$height" | bc`

#Prints Formula output with statement
echo Your BMI: $bmi

#Certain condition to check bmi status
#Condition to check underweight if bmi less than 18.5
if [ `echo "$bmi<=18.5" | bc` -eq 1 ]
then
		echo You are Underweight

#Condition to check Normal if bmi between 18.5 and 24.9
elif [ `echo "$bmi>18.5" | bc` -eq 1 -a `echo "$bmi<=24.9" | bc` -eq 1 ]
then
		echo You are Normal

#Condition to check overweight if bmi between 25 and 29.9
elif [ `echo "$bmi>=25" | bc` -eq 1 -a `echo "$bmi<=29.9" | bc` -eq 1 ]
then
		echo You are Overweight

#Condition to check obese if bmi 30 or greater
elif [ `echo "$bmi>30"  | bc` -eq 1 ]
then
		echo You are Obese
fi

