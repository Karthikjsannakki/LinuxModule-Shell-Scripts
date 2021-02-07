#!/bin/bash

<<c
*******************************************************************
Author Name: Karthik J
Date: 04/02/2021
Description: Write a script to rename a file/directory replaced by 
lower/upper case letters.
Sample execution: -
Before running the script
$ ls
File.txt MyScript.SH MyFile007.txt dir/ Assign1/ newfolder/
$ ./15_file_upper_lower
Files are rename in lowercase and directories are renamed in upper case
$ ls
file.txt myfile007.txt myscript.sh DIR/ ASSIGN1/ NEWFOLDER/
*******************************************************************
c

#Prints Statement
echo Before running the script
#Displays list of files and directory of working directory
ls
#Stores list of files and directory of working directory in variable list
list=`ls`

#Loop is used to pass list one by one 
for i in $list
do
		#Filteration of only Directories will be done here
		if [ -d $i ]
		then
				#Renaming of directory takes place here
				mv $i `echo $i | tr [:lower:] [:upper:]`
		fi
done

#Loop is used to pass list one by one 
for i in $list
do
		#Filteration of only files will be done here
		if [ -f $i ]
		then
				#Renaming of files takes place here
				mv $i `echo $i | tr [:upper:] [:lower:]`

		fi
done
#Prints statement
echo -e "\nFiles are renamed in lowercase and directories are renamed in upper case"
#Displays updated list of files and directory of working directory
ls
