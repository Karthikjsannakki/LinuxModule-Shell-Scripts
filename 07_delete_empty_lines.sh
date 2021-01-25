#!/bin/bash
<<c
*******************************************************************
Author Name: Karthik J
Date: 22/01/2021
Description: Write a script to delete empty lines from a file
Input: file with blank lines
output: file without blank lines
*******************************************************************
c

#Condition to check wheather argument(.txt file)passed through command line
if [ $# -ge 1 ]
then
		#Checks entered file present in the working directory
		if [ -f $1 ]
		then
				#checks does file have content
				if [ -s $1 ]
				then
						#cmd to delete empty line & to save file
						sed -i '/^$/d' $1
						#Indication that empty line have been deleted and saved
						echo Empty lines are Deleted...
				fi #3rd if termination
		else
				echo "File doesn't Exist"
		fi #2nd if termination
else
		echo Error: Please pass the file name through command line.
fi #1st if termination

