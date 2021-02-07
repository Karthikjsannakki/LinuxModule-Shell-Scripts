#!/bin/bash

<<c
********************************************************************
Author Name: Karthik J
Date: 01/02/2021
Description: Write a script to locks down file permissions for a 
particular directory.
Sample execution: -
1. ./28_lock_permissions.sh Dir/
Before locking
total 0
-rw-rw-r-- 1 biju biju 0 Jun 8 12:37 D2file1
-rw-rw-r-- 1 biju biju 0 Jun 8 12:37 D2file2
-rw-rw-r-- 1 biju biju 0 Jun 8 12:37 D2file3

After locking
total 0
-rw------- 1 biju biju 0 Jun 8 12:37 D2file1
-rw------- 1 biju biju 0 Jun 8 12:37 D2file2
-rw------- 1 biju biju 0 Jun 8 12:37 D2file3
2. ./28_lock_permissions.sh
Error : Please pass the directory in command line
*********************************************************************
c


#To check if directory passed through CMD Line
if [ $# -ge 1 ]
then
		#By usage of for loop we can pass multiple directory from CMD Line to lock file
		for directory in "$@"
		do
				#Will check wheather directory is present or not
				if [ -d "$directory" ]
				then
						#Will prints the directory name passed from CMD line easy to recognize
						echo Directory: $directory
						#Prints statement
						echo Before locking
						#To print list of file present in the directory with permission info 
						ls -l $directory
						#Will lock file permission for group and other user
						chmod -R go-rwx $directory
						echo #Blank line
						#Prints statement						
						echo After locking
						#Will print list of file present in the directory with permission info 
						ls -l "$directory"
						
				else
						#prints if directory is not present
						echo Directory: $directory
						echo Error!!! No such directory
				fi
		done
else
		#Prints if none of dir is passed through CMD line
		echo Error : Please pass the directory in command line
fi
