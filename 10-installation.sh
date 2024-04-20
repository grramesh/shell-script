#!/bin/bash
#we can use(Command --> id ) to know normal(1-127 is normal user) or super user(0 is super user) or (command--> id -u) 
# How do you run a command inside shell script and take the output. (command--> variable name=$( ) it run and execute the command and give it to variable name)
# command--> USERID=$(id -u) here USERID is variable name.
#when we are installing we should be in super user. 

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "please run this script in root access"
else
echo "you are root user."

fi

dnf install mysql -y 

echo "is still script proceeding"
