#!/bin/bash -x

echo "Password Should contain Minimum 8 characters and at least one upper case "
read -p "Enter Password " password;

pat="[A-Z0-9]{8,}"

if [[ $password =~ $pat ]]
then
	echo $password" is valid";
else
	echo $password" is invalid"
fi
