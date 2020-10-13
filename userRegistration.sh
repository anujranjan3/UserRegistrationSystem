#!/bin/bash -x

echo "Password Should contain Minimum 8 characters "
read -p "Enter Password " password;

pat="^[0-9a-zA-Z]{8,}"

if [[ $password =~ $pat ]]
then
	echo $password" is valid";
else
	echo $password" is invalid"
fi
