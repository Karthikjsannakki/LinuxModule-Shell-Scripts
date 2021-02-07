#!/bin/bash

<<c
*******************************************************************
Author Name: Karthik J
Date: 27/01/2021
Description: Write a script to sort a given number in ascending or 
descending order.
Input1: ./13_sorting.sh -a 5 4 6 2 3 8 9 7 1
output1: Ascending order of array is 1 2 3 4 5 6 7 8 9
Input2: ./13_sorting.sh -d 5 4 6 2 3 8 9 7 1
output2: descending order of array is 9 8 6 5 4 3 2 1
*******************************************************************
c

#Passed arguments will be stored in arr
arr=($@)
#first argument i.e -a/-d will be stored in char
char=${arr[0]}
#Numbers passed by argument except -a/-d will be stored in num
num=${@:2}

#To check argument passed through cmd
if [ $# -ge 1 ]
then
		#will check number passed through cmd is more than one numbers excluding -a/-d(character)
		if [ $# -ge 3 ]
		then

				#After extracting -a/-d which is stored in char will be passed 
				#to the case statement to do the task
				case $char in
						#Loop to compare number by number for ascending order
						-a)for((i=1;i<$#;i++))
				do
						for((j=$i;j<$#;j++))
						do
								#Condition to check number by number
								if [ ${arr[$i]} -gt ${arr[$j]} ]
								then
										#swapping of numbers takes place here
										temp=${arr[$i]}
										arr[$i]=${arr[$j]}
										arr[$j]=$temp
								fi
						done
				done
				#prints only numbers passed
				echo Array Order before sorting: $num
				#Swapped result will stored in onum
				onum=${arr[@]}
				#Prints only numbers excluding character
				echo Ascending order of array is ${onum: 3}
				;;

				#Loop to compare number by number for decending order
				-d)for((i=1;i<$#;i++))
		do
				for((j=$i;j<$#;j++))
				do 
						#Condition to check number by number     
						if [ ${arr[$i]} -lt ${arr[$j]} ]
						then  
								#swapping of numbers takes place here  
								temp=${arr[$i]}
								arr[$i]=${arr[$j]}
								arr[$j]=$temp
						fi
				done
		done
		#prints only numbers passed
		echo Array Order before sorting: $num
		#Swapped result will stored in onum
		onum=${arr[@]}
		#Prints only numbers excluding character
		echo Decending order of array is ${onum: 3}
		;;
*) echo -e "Error : Please pass the choice.\nUsage : ./13_sorting -a/-d 4 23 5 6 3\n"
esac
#if numbers is not sufficient to do the task
else
		echo Please pass some more numbers
fi
#If argument is not passed
else
		echo -e "Error : Please pass the argument through command line.\nUsage : ./13_sorting -a/-d 4 23 5 6 3\n"
fi
