#!/bin/bash

<<c
*******************************************************************
Author Name: Karthik J
Date: 01/02/2021
Description: Write a script to search a user present in your system.
Sample execution: -
1. ./33_user_present.sh xyz
xyz not present
2. ./33_user_present.sh root
root is present
3. ./33_user_present.sh
Error : Please pass the argument through command line.
*******************************************************************
c

#To check arguments passed through cmd line
if [ $# -ge 1 ]
then
		#Username will store only username which is cutted and extracted by /etc/passwd
		Username=(`cat /etc/passwd | cut -d ":" -f1`)
		#Pre-initialization
		Flag=0

		#Loop is for checking and iteration till nth(size) array element
		for i in `seq 0 ${#Username[@]}`
		do
				#Condition to check User is present are not
				if [ "${Username[$i]}" == "$1" ]
				then
#			If above condition satisfies than flag set to 1 
#			Reason for Flag usage is if user is not present it'll print "user not 
#			present" upto size of an array (Here its 41) because of for loop
 
						Flag=1

				fi
		done
		#Condition to check Flag 
		if [ $Flag -eq 1 ]
		then
				#Prints when Flag set to 1
				echo $1 is present
		else
				#Prints when Flag is 0
				echo $1 is not present
		fi
else
		#Prints if arguments not passed through cmd line
		echo Error : Please pass the argument through command line.
fi


