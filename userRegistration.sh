#!/bin/bash -x

echo "Password Should contain Minimum 8 characters and at least one upper case and at least one numeric and one special Character(#!%*?) "

read -p "Enter Password " password;

pat="^.{8,}$"

if [[ $password =~ $pat ]]
then
	echo $password" is having 8 characters";

	if [[ "$password" =~ [A-Z] && "$password" =~ [0-9]  &&  "$password" =~ [#!%*?]  ]];
	then
		echo $password " is valid";
	else
		echo $password " is invalid ";
	fi
else
	echo $password" is invalid"
fi
