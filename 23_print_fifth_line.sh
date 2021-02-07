#!/bin/bash

<<c
*******************************************************************
Author Name: Karthik J
Date: 28/01/2021
Description: WAS to print the 5 th line of a file passes through 
command line.
Sample execution:
1. ./25_print_fifth_line file.txt
Fifth line of file.txt is line 5
2. ./25_print_fifth_line file1.txt
Error : file1.txt having only 2 lines. So can’t print 5 th line.
3. ./25_print_fifth_line file2.txt
Error : No such a file.
4. ./25_print_fifth_line
Error : Please pass the file name in command line.
*******************************************************************
c

#To check arguments passed through cmd line
if [ $# -eq 1 ]
then
		#To check FILE exists
		if [ -e $1 ]
		then
				#To check number of lines in the file and to store no of lines to variable line
				line=`wc -l $1 | cut -d " " -f1`
				#Will check the lines in the file is >= 5
				if [ $line -ge 5 ]
				then
						#CMD to print only 5th line of the file
						cat $1 | head -n 5 | tail -1

				else
						#prints error if the lines in the file is less than 5 lines
						echo Error : $1 having only $line lines. So can’t print 5th line.
				fi
		else
				#Prints if file not exists
				echo Error : No such a file.
		fi
else
		#Prints if file not passed through cmd line
		echo Error : Please pass the file name through command line.
fi
