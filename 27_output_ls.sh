#!/bin/bash

<<c
*******************************************************************
Author Name: Karthik J
Date: 30/01/2021
Description: Write a script that takes any number of directories as 
command-line arguments and then lists the contents of each of these 
directories.
Sample execution: -
Let assume your pwd is /home/user/ECEP/Linux_Systems/
1. ./28_output_ls.sh
Assignments Classwork
2. ./28_ouput_ls.sh ~ ~/ECEP
/home/user:
Downloads Documents Desktop Music Pictures Public Videos
ECEP
/home/user/ECEP:
Linux_Systems Advnc_C Linux_Internals Data_Structures MC
3. ./28_ouput_ls.sh Test
28_output_ls.sh: Cannot access ‘Test’ : No such a file or
directory.
*******************************************************************
c

#Condition if No argument passed through CMD Line
if [ $# -eq 0 ]
then
		dir #Alternative for ls
#Condition to check argument passed through CMD Line
elif [ $# -ge 1 ]
then
		#Directory passed through CMD line will be stored in the list and used for iteration
		for list in "$@"
		do
				#Will chech for directories and files
				if [ -d "$list" ]
				then
						#Prints argument directory name
						echo "$list:"
						#Print content of the directory
						dir "$list" 
				else
						#Prints if file/directory not present/accessed
						echo Cannot access $list : No such a file or directory.
				fi
		done
fi
