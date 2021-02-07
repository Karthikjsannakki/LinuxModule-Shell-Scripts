#!/bin/bash

<<c
*******************************************************************
Author Name: Karthik J
Date: 28/01/2021
Description: Write script called say_hello, which will print 
greetings based on time.
Sample execution: -
1. When we start shell (whenever you opening new tab or terminal)
Good Morning user, Have nice day!
This is Thursday 08 in June of 2017 (10:44:10 AM)
*******************************************************************
c

#As there's restriction to use %H used below CMD to extract hour from date
#After date cmd cuted time part by space as delimiter next extracted hour using : as delimiter
hour=`date | cut -d " " -f5 | cut -d ":" -f1`
#%A gives locale's full weekday name (e.g., Sunday) 
day=`date +%A`
#%r gives locale's 12-hour clock time (e.g., 11:11:04 PM)
time=`date +%r`
#%d gives day of month (e.g., 01)
date=`date +%d`
#%B gives locale's full month name (e.g., January)
month=`date +%B`
#%Y gives year
year=`date +%Y`

#If time inbetween 5 AM – 12 PM prints below statement
if [ $hour -ge 05 -a $hour -le 12 ]
then
		echo -e "Good Morning user, Have a nice day!\nThis is $day $date in $month of $year ($time)\n"
#If time inbetween 12 PM – 1 PM prints below statement
elif [ $hour -ge 12 -a $hour -le 13 ]
then 
		echo -e "Good noon user, Have a nice day!\nThis is $day $date in $month of $year ($time)\n"
#If time inbetween 2 PM – 5 PM prints below statement
elif [ $hour -ge 14 -a $hour -le 17 ]
then 
		echo -e "Good Afternoon user, Have a nice day!\nThis is $day $date in $month of $year ($time)\n"
#If time inbetween 5PM – 9 PM prints below statement
elif [ $hour -ge 17 -a $hour -le 20 ]
then 
		echo -e "Good Evening user, Have a nice day!\nThis is $day $date in $month of $year ($time)\n"
#By default time inbetween 9 PM – 5 AM prints below statement		
elif [ $hour -gt 20 -a $hour -lt 05 ]
then
		echo -e "Good Night user, Have a nice day!\nThis is $day $date in $month of $year ($time)\n"
fi

