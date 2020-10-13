#!/bin/bash -x

#program to validate Last Name of user

echo "Last Name should Start with Capital and has minimum 3 characters ";
read -p "Enter Last Name Of User" lastName;

pat="^[A-Z]{3,}";

if [[ $lastName =~ $pat ]]
then
	echo $lastName " is valid ";
else
	echo $lastName " is invalid ";
fi
