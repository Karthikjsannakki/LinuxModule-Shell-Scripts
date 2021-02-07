#!/bin/bash

<<c
*************************************************************************
Author Name: Karthik J
Date: 05/02/2021
Description: Given album name and corresponding directory this scripts
renames them properly by inserting index numbers.
Sample execution: -
Before executing the script
$ ls
DSN001.jpg DSN002.jpg DSN003.jpg DSN004.jpg DSN005.jpg
./17_rename_album.sh day_out
All .jpg files in current directory is renamed as
day_out_001.jpg day_out_002.jpg day_out_003.jpg
day_out_005.jpg
day_out_004.jpg
./17_rename_album.sh
Error : Please pass the prefix name through command line.
*************************************************************************
c

#To check prefix name through command line.
if [ $# -eq 1 ]
then
		#Pre-initialization
		count=0
		#list(Variable) will store only .jpg files
		list=`ls *.jpg`
		#Loop will pass files one by one
		for i in $list
		do
				#This will keep serial no as like previous
				count=$(($count+1))
				#Renaming of passed prefix will takes place here
				mv $i $1_00$count.jpg
		done
		#Prints statement
		echo -e "\nAll .jpg files in current directory is renamed as"
		#Displays list of updated .jpg files
		ls *.jpg
else
		#Prints if prefix not passed through command line.
		echo Error : Please pass the prefix name through command line.
fi
