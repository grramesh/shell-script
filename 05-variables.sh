#!/bin/bash

echo "please enter your username::"
read -s username #here user name is variables 
                 #here -s is given beside read to hide password entering

echo "please enter the password"
read -s password

echo "username is : $username, password is $password"

