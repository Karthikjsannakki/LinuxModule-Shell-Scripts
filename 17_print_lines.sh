#!/bin/bash

<<c
*******************************************************************
Author Name: Karthik J
Date: 28/01/2021
Description: Write script to print contents of file from given line 
number to next given number of lines.
Input: /18_print_lines.sh 5 3 myfile.txt
output: 
line number 5
line number 6
line number 7
*******************************************************************
c

#To check 3 arguments passed through cmd
if [ $# -eq 3 ] 
then
		#To check FILE exists
		if [ -e $3 ]
		then
				#To check number of lines in the file and to store no of lines to variable lines
				lines=`wc -l $3 | cut -d " " -f1`
				#will add number of lines passed through cmd
				#It'll be helpfull to check wheather file has that much lines to display 
				add=$(($1+$2))
				#Compares total lines with passed line to print
				if [ $add -le $lines ]
				then
						#Main logic to display lines
						tail +$1 $3 | head -n $2
				else
						#Triggers if number of lines in the file is less than passed line
						echo -e "\nFile consist of only $lines lines..."
						echo "Can't Proceed"
				fi
		else
				#Triggers when file not exist
				echo "Error opening $3"
		fi
else
		#Triggers when arguments not passed properly
		echo -e "Error: arguments missing!\nUsage: ./file_filter.sh start_line uptoline filename\nFor eg. ./20_file_filter.sh 5 5 <file>\n"
fi
