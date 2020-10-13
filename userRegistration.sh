#!/bin/bash -x

read -p "Enter Mobile Number in given format (E.g. 91 9919819801) " number;

pat="^[0-9]{2}[[:space:]][0-9]{10}$"

if [[ $number =~ $pat ]]
then
	echo $number" is valid";
else
	echo $number" is invalid"
fi
