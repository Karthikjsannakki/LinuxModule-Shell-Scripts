#!/bin/bash

<<c
*******************************************************************
Author Name: Karthik J
Date: 01/02/2021
Description: Write a script for generating random 8-character 
passwords including alpha numeric characters.
Sample execution: -
1. ./21_random_password.sh
nH@Rh0Pv
O8ug&HfD
ro0IUJ$f
wx!Kox3U
i3?BkomA
S89R%OA3
#e3v8PzS
d?F8TEo6
Lrb-qvl9
T!ilf1C5
*******************************************************************
c

<<c
1. cat /dev/urandom provides a mechanism for generating pseudorandom numbers
2. [:print:] will print all printable characters, including space "tr -dc" will
complement and deletes sybolic characters
3.fold -w will wrap each input line to fit in specified width
4. head is used to stop generation of random numbers/password till 8
c

cat /dev/urandom | tr -dc [:print:] | fold -w 8 | head -n 8
