#!/bin/bash

<<c
*******************************************************************
Author Name: Karthik J
Date: 01/02/2021
Description: Write a script to rename current working directory with
given name.
Sample execution: -
Before executing the script let assume your current working directory is
$ pwd
/home/user/ECEP/Linux_Systems/Test_16
$ ./rename_cur_dir.sh Assign2
current directory will be renamed to Assign2
$ pwd
/home/user/ECEP/Linux_Systems/Test_16
$ ./rename_cur_dir.sh
Error : Please pass the new directory name
*******************************************************************
c

#To check directory name passed from CMD line
if [ $# -eq 1 ]
then
		#Prints statement
		echo -e "Current directory will be renamed to $1\n\nCurrent working directory before renaming..."
		#Displayes Current working directory
		pwd

		#Current working directory name will be stored in cwd
		cwd=`pwd`
		#Basename of Current working directory will be stored in bname
		bname=`basename $cwd`
		#Changes to parent directory to rename current working directory
		cd ..
		#Directory name changes here
		mv $bname $1
		#Changes directory again to display current working directory
		cd $1
		#Prints statement 
		echo -e "\nCurrent working directory after renaming :"
		#To display changed current working directory
		pwd
else
		#Prints if directory name not passed through CMD Line
		echo Error : Please pass the new directory name
fi
