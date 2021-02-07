#!/bin/bash

<<c
*******************************************************************
Author Name: Karthik J
Date: 01/02/2021
Description: Display the names of any file-system which have less 
than 10% free space available
Sample execution: -
1. . /29_free_space.sh
Filesystem /dev/sda5 have less than 10% freespace
*******************************************************************
c

#FilesysName will stores filesystems names which is cutted and extracted by cmd df
#Here tr -s used to eliminate space and tail is to remove header
FilesysName=(`df | tr -s " " | cut -d " " -f1 | tail -n +2`)

#FilesysName will stores consumed space without % which is cutted and extracted by cmd df
#Here tr -s used to eliminate space and tail is to remove header
UsedPercent=(`df | tr -s " " | cut -d " " -f5 | cut -d "%" -f1 | tail -n +2`)

#Loop is for checking and iteration till n-1(size) array element
for i in `seq 0 $((${#FilesysName[@]}-1))`
do
		#Condition to check filesystem which has less than 10% freespace
		if [ ${UsedPercent[$i]} -gt 90 ]
		then
				#Prints filesystem which has less than 10% freespace
				echo "Filesystem ${FilesysName[$i]} have less than 10% freespace"
		fi
done
