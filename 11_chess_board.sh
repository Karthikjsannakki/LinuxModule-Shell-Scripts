#!/bin/bash

<<c
*******************************************************************
Author Name: Karthik J
Date: 24/01/2021
Description: Write a script to print chess board
Input: ./12_chess_board.sh
output: 8x8 black and white chess board
*******************************************************************
c

#outer loop to handle number of rows 
#chess board has 8 rows
for i in `seq 8`
do
		#inner loop to handle number of columns
		#values changing acc. to outer loop
		#chess board has 8 columns
		for j in `seq 8`
		do
				#logic to determine even or odd block
				even=$(((i+j)%2))
				if [ $even -eq 0 ]
				then	
						#prints white color
						echo -e -n "\e[47m  "
				else
						#prints black color
						echo -e -n "\e[40m  "
				fi
		done
		#ensures it exists normally
		echo -e -n "\e[0m"
		echo #new line
done
