#!/bin/bash -x

#User Registration System

flag=0;

echo "First Name should Start with Capital and has minimum 3 characters ";

read -p "Enter First Name Of User" firstname;

firstPat="^[A-Z]{3,}";

if [[ $firstname =~ $firstPat ]]
then
	(( flag++ ));
	echo $firstname " is valid ";
else
	flag=0;
	echo $firstname " is invalid ";
fi

echo "Last Name should Start with Capital and has minimum 3 characters ";

read -p "Enter Last Name Of User" lastName;

lastPat="^[A-Z]{3,}";

if [[ $lastName =~ $lastPat ]]
then
	(( flag++ ));
	echo $lastName " is valid ";
else
	flag=0;
	echo $lastName " is invalid ";
fi

read -p "Enter Email Id : " email;

emailPattern="^[0-9a-zA-Z]+([._+-][0-9a-zA-Z]+)?@[0-9a-zA-Z]+.[a-zA-z]{2,4}([.][a-zA-z]{2})?"

if [[ $email =~ $emailPattern ]]
then
	(( flag++ ));
	echo $email" is valid";
else
	flag=0;
	echo $email" is invalid"
fi

read -p "Enter Mobile Number in given format (E.g. 91 9919819801) " number;

pat="^[0-9]{2}[[:space:]][0-9]{10}$"

if [[ $number =~ $pat ]]
then
	(( flag++ ));
	echo $number" is valid";
else
	flag=0;
	echo $number" is invalid"
fi


echo "Password Should contain Minimum 8 characters and at least one upper case and at least one numeric and one special Character(#!%*?) "

read -p "Enter Password " password;

pat="^.{8,}$"

if [[ $password =~ $pat ]]
then
	echo $password" is having 8 characters";

	if [[ "$password" =~ [A-Z] && "$password" =~ [0-9]  &&  "$password" =~ [#!%*?]  ]];
	then
		(( flag++ ));
		echo $password " is valid";
	else
		flag=0;
		echo $password " is invalid ";
	fi
else
	flag=0;
	echo $password" is invalid"
fi

if [ $flag -eq 5 ]
then
	echo "User Registration Successful!"
else
	echo "Failed!! Try again"
fi
