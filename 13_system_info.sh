#!/bin/bash

<<c
*******************************************************************
Author Name: Karthik J
Date: 27/01/2021
Description: Write a script to print the following:
• Currently logged users
• Your shell directory
• Home directory
• OS name & version
• Current working directory
• Number of users logged in
• Show all available shells in your system
• Hard disk information
• CPU information.
• Memory information.
• File system information.
• Currently running process

Input: ./14_system_info.sh
1. Currently logged users
2. Your shell directory
3. Home directory
4. OS name & version
5. Current working directory
6. Number of users logged in
7. Show all available shells in your system
8. Hard disk information
9. CPU information.
10. Memory information.
11. File system information.
12. Currently running process.

output: 
Enter the choice : 2
Your shell directory is /bin/bash
*******************************************************************
c

#Printing statement
echo -e "1. Currently logged users\n2. Your shell directory\n3. Home directory\n4. OS name & version\n5. Current working directory\n6. Number of users logged in\n7. Show all available shells in your system\n8. Hard disk information\n9. CPU information.\n10. Memory information.\n11. File system information.\n12. Currently running process\n"
echo #Blank line

#Prints Statement reads input from the user stores it variable choice
read -p "Enter the choice: " choice
echo #Blank line

#Acc. to the user input respective task takes place
case $choice in
		#Prints Currently logged users
		1) echo Currently logged users: `whoami` ;;

		#Prints shell directory
		2) echo Your shell directory is $SHELL;;

		#Prints home directory
		3) echo Your Home directory is $HOME;;

		#Prints os name and version in detail
		4) echo -e "Your OS Name and version is\n`uname -a`" ;;

		#Prints current working directory
		5) echo "Your Current Working directory is `pwd`";;

		#Prints number of users logged
		6) echo Number of users logged is
				w ;;

		#Prints All available Shells in the system
		7) echo All available Shells in your system is
				cat /etc/shells;;

		#Prints Hard disk info
		8) echo Your Hard disk information is
				cat /proc/diskstats ;;

		#Prints CPU info
		9) echo Your CPU information is
				cat /proc/cpuinfo;;

		#Prints memory info
		10) echo Your Memory information is
				cat /proc/meminfo ;;

		#Prints file system info
		11) echo Your File system information is
				cat /proc/filesystems ;;

		#Prints Currently running process
		12) echo Your Currently running process is
				ps;;

		#Prints if user not entered choise properly
		*) echo Please Enter Correct choice!!!

		esac
