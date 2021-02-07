#!/bin/bash

<<c
********************************************************************
Author Name: Karthik J
Date: 01/02/2021
Description: Write a script to determine whether a given file system 
or mount point is mounted.
Sample execution: -
1. ./27_mounted_fs.sh /dev/sda2
File-system /dev/sda2 is mounted on / and it is having 98%
used space with 3298220 KB free.
2. ./27_mounted_fs.sh /dev
/dev is not mounted.
3. ./27_mounted_fs.sh
Error : Please pass the name of the file-system through command line.
*********************************************************************
c

#Condition to check argument passed with CMD Line
if [ $# -eq 1 ]
then
                #Here tr -s used to eliminate space and tail is to remove header 
		#FilesysName will stores filesystems names which is cutted and extracted by cmd df
		FilesysName=(`df | tr -s " " | cut -d " " -f1 | tail -n +2`)
		#Available will stores available memory which is cutted and extracted by cmd df
		Available=(`df | tr -s " " | cut -d " " -f4 | tail -n +2`)
		#Mounted will stores mounted on list which is cutted and extracted by cmd df
		Mounted=(`df | tr -s " " | cut -d " " -f6 | tail -n +2`)
		#UsedPercent will stores drive usage in % which is cutted and extracted by cmd df
		UsedPercent=(`df | tr -s " " | cut -d " " -f5 | tail -n +2`)
		#Pre-initialization
		Flag=0
		#Loop is for checking and iteration till n-1(size) array element
		for i in `seq 0 $((${#FilesysName[@]}-1))`
		do
				#Will check passed filesystem name present in the FilesysName data
				if [ "${FilesysName[$i]}" == "$1" ]
				then
						#Sets to 1 if above condition satisfies
						Flag=1
						#Usage in % of respective filesystem will be stored here
						UsedPercent=${UsedPercent[$i]}
						#Availabe drive space of respective filesystem will be stored here
						Available=${Available[$i]}
						#respective filesystem where it's mounted on will be stored here
						Mounted=${Mounted[$i]}
				fi
		done
		#If above condition satisfied than flag set to 1
		if [ $Flag -eq 1 ]
		then
				#Prints statement by accessing respective variable on the go in the above condition
				echo "File-system $1 is mounted on $Mounted and it is having $UsedPercent used space with $Available KB free."
		else
				#Will print if filesystem is not mounted
				echo $1 is not mounted.
		fi
else
		#will prints if filename not passed through CMD line
		echo Error : Please pass the name of the file-system through command line.
fi
