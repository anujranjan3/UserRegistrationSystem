#!/bin/bash -x

read -p "Enter Email Id : " email;

emailPattern="^[0-9a-zA-Z]+([._+-][0-9a-zA-Z]+)?@[0-9a-zA-Z]+.[a-zA-z]{2,4}([.][a-zA-z]{2})?"

if [[ $email =~ $emailPattern ]]
then
	echo $email" is valid";
else
	echo $email" is invalid"
fi
