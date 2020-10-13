#!/bin/bash -x

#program to validate First Name of user

echo "First Name should Start with Capital and has minimum 3 characters ";
read -p "Enter First Name Of User" firstname;

pat="^[A-Z]{3,}";

if [[ $firstname =~ $pat ]]
then
	echo $firstname " is valid ";
else
	echo $firstname " is invalid ";
fi
