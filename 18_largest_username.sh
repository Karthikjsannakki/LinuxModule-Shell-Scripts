#!/bin/bash

<<c
*******************************************************************
Author Name: Karthik J
Date: 28/01/2021
Description: Display the longest and shortest user-names on the system.
Sample execution: -
1. ./ 18_largest_username.sh
The Longest Name is: gnome-initial-setup
The Shortest Name is: lp
*******************************************************************
c

#UserName will store all users name present in the system
#cat /etc/passwd used to fetch info of username and cut is used to extract only username field
UserName=(`cat /etc/passwd | cut -d ":" -f1`)

#Pre-initialization
m=${#arr[0]}

#1st for loop is to find longest username

#Loop is for checking and iteration till n-1(size) array element
for i in `seq $((${#UserName[@]} -1 ))`	
do
		#Considering 1st array as default using that will check for longest name
		if [ ${#UserName[i]} -gt $m ]
		then
#				For every iteration 'm' gets updated by size of the username value which is
#				easy to compare and find longest username
				m=${#UserName[i]}
#				Username which encounters as greatest respective array name will be stored
#      				in the Longest
				Longest=${UserName[$i]}

		fi

done
#Prints Longest Username
echo The Longest UserName is: $Longest

#2nd for loop is to find shortest username

#Loop is for checking and iteration till n-1(size) array element
for i in `seq $((${#UserName[@]} -1 ))`	
do
		#Considering 1st array as default using that will check for shortest name
		if [ ${#UserName[i]} -lt $m ]
		then
#				For every iteration 'm' gets updated by size of the username value which is
#				easy to compare and find shortest username
				m=${#UserName[i]}
#				Username which encounters as shortest respective array name will be stored
#      				in the Shortest
				Shortest=${UserName[$i]}

		fi

done
#Prints Shortest Username
echo The Shortest UserName is: $Shortest
