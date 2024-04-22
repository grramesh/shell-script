#!/bin/bash
# Function is block of code that can do some work.
# FUNC_NAME (){  }   <--- THAT is syntax of function.
# any values if repeated inside in a code can be declared as variable. 
# similarly any block of code is repeated, considered as functions.

USERID=$(id -u)

#Below Validate is Funtion name 
VALIDATE(){    
       if [ $1 -ne 0 ]
      then
         echo "$2..FAILURE"
         exit 1
      else
         echo "$2.. SUCCESS"
    fi 
}

if [ $USERID -ne 0 ]
then 
    echo "please run this script in root access"
    exit 1 # manually exit if error come.# 
else
echo "you are root user." 

fi

dnf install mysql -y
VALIDATE $? "Installing my sql"



dnf install git -y
VALIDATE $? "Installing my git"




echo "is still script proceeding"