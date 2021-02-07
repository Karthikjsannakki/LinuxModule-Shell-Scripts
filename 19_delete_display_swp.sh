#!/bin/bash

<<c
*******************************************************************
Author Name: Karthik J
Date: 04/02/2021
Description: Write a script to delete all the .swp files found in 
your system or directory.
Sample execution: -
1. ./20_delete_display_swp.sh
swp file found :
/home/user/ConventionalMethod/.pic16F887.as.swp
/home/user/Development/BeagleBone-Xm/VideoApp/.cmds.swp
/home/user/Development/LDD/.expt_drv.c.swp
/home/user/Development/LDD/.ddk_block.c.swp
2. ./20_delete_display_swp.sh
swp files not found.
3. ./20_delete_display_swp.sh test_swp
No swp files found in test_swp.
*******************************************************************
c
#Condition if no argument passed through cmd line
if [ $# -eq 0 ]
then
		#All swp file from pwd will be stored in the list
		list=`find -name "*.swp"`
		#Will checks swp file present are not
		if [ ${#list[$@]} -gt 0 ]
		then
				#Prints statement
				echo swp file found :
				#Finds swp file
				find -name "*.swp"
				#Cmd to delete swap file if found 
				find -name "*.swp" -delete
				#Prints statement as indication
				echo All swp files from the present working directory as been removed...
		else
				#Prints if no swp file found
				echo No swp files found
		fi
#Checks for argument and checks wheather directory present are not 
elif [ $# -ne 0 -a -d $1 ]
then
		#Changes to that directory to remove swp file
		cd $1
		#List of files or dir present will be stored in the list
		list=`ls`
		#Will checks swp file present are not
		if [ $((${#list[$@]}-1)) -gt 0 ]
		then
				#Prints statement
				echo swp file found :
				#Finds swp file
				find -name "*.swp"
				#Cmd to delete swap file if found 
				find -name "*.swp" -delete
				#Prints statement as indication
				echo All .swp file from $1 directory are Sucessfully removed....
		else
				#Prints if no swp file found
				echo No swp files found in $1 directory.
		fi
#Checks for argument and checks wheather file present are not 
elif [ $# -ne 0 -a -f $1 ]
then
		#Cmd to delete swap file if found 
		find -name $1 -delete
		#Prints statement as indication
		echo $1 file Sucessfully Removed...
else
		#Prints if swp file not found
		echo swp files not found
fi
