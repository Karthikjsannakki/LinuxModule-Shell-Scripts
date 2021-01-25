#! /bin/bash

echo Enter the first number:
read a
echo Enter the second number:
read b

if [ $a -gt $b ]
then
	echo "$a is greater than $b"
else
	echo "$a is lesser than $b"
fi
