#!/bin/bash

<<c
*******************************************************************
Author Name: Karthik J
Date: 01/02/2021
Description: Write a script to replace 20% lines in a C file randomly 
and replace it with the pattern <---DEL--->.
Sample execution: -
1. ./33_replace<DEL>.sh main.c
Before replacing
#incude <stdio.h>
int main()
{
printf(“Hello world\n”);
}
After replaced
#incude <stdio.h>
int main()
{
<-----------Deleted------------>
}
2. ./33_replace<DEL>.sh main1.c
Error : No such a file.
3. ./33_replace<DEL>.sh main2.c
Error : main2.c is empty file. So can’t replace the string.
4. ./33_replace<DEL>.sh
Error : Please pass the file name through command line.
*******************************************************************
c
#To check .c file passed through cmd line
if [ $# -eq 1 ]
then
		#To check file existence
		if [ -f $1 ]
		then
				#To check file content
				if [ -s $1 ]
				then
						#Total lines of file passed will be stored in lines
						lines=`wc -l $1 | cut -d " " -f1`
						#Calculation to Randomly delete 20% lines from the file
						percentage=`echo "$lines * 0.2" | bc`
						#Generates random line numbers
						randnum=`shuf -i 1-$lines -n $percentage`
						#Loop sends random numbers one by one
						for i in $randnum
						do
								#Deletion takes place here
								sed -i ''$i's/.*/<------Deleted------->/' $1
						done
						#Prints file to show deleted line
						cat $1
				else
						#Prints if file is empty
						echo Error : $1 is empty file. So can’t replace the string.
				fi
		else
				#Prints if file not exit
				echo Error : No such a file.
		fi
else
		#Prints if file is not passed through CMD Line
		echo Error : Please pass the file name through command line.
fi
