#!/bin/bash

<<c
***************************************************************************
Author Name: Karthik J
Date: 04/02/2021
Description: Use pipes or redirection to create an infinite feedback loop.
Sample execution: -
1. ./redirection.sh
Before loop file contents
Hai hello
After loop file contents
Hai hello
Hai hello
Hai hello
Hai hello
Hai hello
Hai hello
Hai hello
.
.
.
***************************************************************************
c
#Prints Statement
echo "Before loop file contents"
#Displays file content
cat 1.txt
#Text will be appended to 1.txt
echo Hai hello>1.txt
#Prints Statement
echo After loop file contents
#Output appended data as the file grows & displays it on same terminal as well
tail -f 1.txt >> 1.txt | tail -f 1.txt

