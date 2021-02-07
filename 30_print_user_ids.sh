#!/bin/bash
<<c
*******************************************************************
Author Name: Karthik J
Date: 01/02/2021
Description: Count the number of users with user IDs between 500 and 
10000 on the system
Sample execution: -
1. ./users.sh
Total count of user ID between 500 to 10000 is: 2
2. ./users.sh 0 100
Total count of user ID between 0 to 100 is : 3
*******************************************************************
c

#Userid will store only userid's which is cutted and extracted by /etc/passwd
Userid=(`cat /etc/passwd | cut -d ":" -f3`)
#Pre-initialization
count=0
#Condition if No argument passed through CMD line
if [ $# -eq 0 ]
then
		#Loop is for checking and iteration till n-1(size) array element
		for i in `seq $((${#Userid[@]} -1 ))`
		do
				#Condition to fetch userid count between 500 to 10000
				if [ ${Userid[$i]} -ge 500 -a ${Userid[$i]} -le 10000 ]
				then
				#counts if above condition satisfies through out iterations
						count=$((count+1))
				fi

		done
		#Prints total count of userid between 500 to 10000
		echo Total count of user ID between 500 to 10000 is: $count
fi

#Condition to check argument passed with range
if [ $# -ge 2 ]
then
		#Loop is for checking and iteration till n-1(size) array element
		for i in `seq $((${#Userid[@]} -1 ))`
		do
				#Condition to fetch userid count within specified limit 
				if [ ${Userid[$i]} -ge $1 -a ${Userid[$i]} -le $2 ]
				then
				#counts if above condition satisfies through out iterations
						count=$((count+1))
				fi
		done
		#Prints total count userid between specified limit
		echo Total count of user ID between $1 to $2 is: $count
fi

