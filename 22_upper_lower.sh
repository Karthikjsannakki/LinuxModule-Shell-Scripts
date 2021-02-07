#!/bin/bash

<<c
*******************************************************************
Author Name: Karthik J
Date: 28/01/2021
Description: Shell script to convert string lower to upper and upper 
to lower.
Input: ./23_upper_lower.sh file.txt
1 – Lower to upper
2 – Upper to lower
Please select option : 1
output: 
WHAT IS OS?
WHAT ARE THE DIFFERENT OS?
WHEN IS OS USED?
WHAT IS PARTITION AND ITS USE?
HOW MANY PARTITIONS CAN BE DONE?
*******************************************************************
c
#To check arguments passed through cmd line
if [ $# -eq 1 ]
then
		#To check FILE exists
		if [ -e $1 ]
		then
				#Will check file content
				if [ -s $1 ]
				then
						#Prints statement
						echo -e "1 – Lower to upper\n2 – Upper to lower\n"
						#To read option entered by user
						read -p "Please select option: " option
						
						#Action takes place acc. to option entered
						case $option in
								#cmd to print the content lower to upper
								1) cat $1 | tr [:lower:] [:upper:]
										;;
								#cmd to print the content upper to lower
								2) cat $1 | tr [:upper:] [:lower:]
										;;
								#If options not entered properly
								*)echo Error!!! Please select from above options only...
						esac
				else
						#Prints if there's no content inside file
						echo Error : No contents inside the file.
				fi
		else
				#Prints if file not exist
				echo Error : file does not exist.
		fi
else
		#Prints if file not passed through cmd line
		echo Error : Please pass the file name through command line.
fi

