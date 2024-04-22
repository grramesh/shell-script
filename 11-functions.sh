#!/bin/bash
# Function is block of code that can do some work.
# FUNC_NAME (){  }   <--- THAT is syntax of function.
# any values if repeated inside in a code can be declared as variable. 
# similarly any block of code is repeated, considered as functions.
# How to send Logs from code--> by the help of redirections.--> 01 ( file-name > .log file --this command is for to logs ) 
# 2nd--->  2> logs only error command. 1> logs only sucess command 3rd &> logs both sucess and failure.
# cat > file-name    cat >> file-name (to append /not to override)

# to view logs---> cd /tmp ---> ls -la ----> cat <file-name> ---> cd

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log #It will log in tmp directory as .log


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

dnf install mysql -y  &>>$LOGFILE
VALIDATE $? "Installing my sql"



dnf install git -y   &>>$LOGFILE
VALIDATE $? "Installing my git"




