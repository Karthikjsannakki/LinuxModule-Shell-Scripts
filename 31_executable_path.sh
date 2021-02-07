#!/bin/bash

<<c
*******************************************************************
Author Name: Karthik J
Date: 01/02/2021
Description: For each directory in the $PATH, display the number of 
executable files in that directory.
Sample execution: -
1. ./32_executable_path.sh
Current dir: /usr/local/sbin
current count: 0
Current dir: /usr/local/bin
current count: 0
Current dir: /usr/sbin
current count: 205
Current dir: /usr/bin
current count: 1889
Current dir: /sbincurrent count: 187
Current dir: /bin
current count: 159
Current dir: /usr/games
current count: 5
Current dir: /usr/local/games
current count: 0
Total – 2445
*******************************************************************
c
#$PATH data will be stored in path which is seperated by spaces by removing semicolon using tr
path=(`echo $PATH | tr ':' ' '`)
#Pre-initialization
count=0
totalcount=0
#Sends $PATH Content one by one
for i in ${path[@]}
do
		#Changes to specfic directory
		cd $i
		#Lists all files in that directory and stores it on files
		files=(`ls $i`)
		#Sends file one by one in the loop
		for j in  ${files[@]}
		do
				#Checks for executable files
				if [ -x $j ]
				then
						#Counts executable files in that directory
						count=$(($count+1))
				fi
		done
		#Gives total file count
		totalcount=$(($totalcount+$count))
		#Prints directory name
		echo Current dir: $i
		#Prints count of exe files
		echo current count: $count
done
#Prints overall count of exe file
echo Total – $totalcount
