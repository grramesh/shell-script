#!/bin/bash
#we can use(Command --> id ) to know normal(1-127 is normal user) or super user(0 is super user) or (command--> id -u) 
# How do you run a command inside shell script and take the output. (command--> variable name=$( ) it run and execute the command and give it to variable name)
# command--> USERID=$(id -u) here USERID is variable name.
#when we are installing we should be in super user. 

#Shell script will not stop even if we face error, it will proceed further. 
# its a user responsiblity to check the previous command is success or not(by using exit status command---> echo $? )if success= 0, if not= 1-127
# suppose if we need to install 20 programs, we have to validation each program its taking around 6 lines of validations. hence we have functions topic to minimize these duplicate validations.
# How to send Logs from code--> by the help of redirections.--> 01 ( file-name > .log file --this command is for to logs ) 
# 2nd--->  2> logs only error command. 1> logs only sucess command 3rd &> logs both sucess and failure.
# cat > file-name    cat >> file-name (to append /not to override)


USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log #It will log in tmp directory as .log



if [ $USERID -ne 0 ]
then
    echo "please run this script in root access"
    exit 1 # manually exit if error come.# 
else
echo "you are root user."

fi

dnf install mysql -y &>>$LOGFILE

if [ $? -ne 0 ]
 then 
   echo "Installation of mysql is failure"
   exit 1
 else
   echo "Installation of mysql is sucess"
fi

dnf install git -y &>$LOGFILE

if [ $? -ne 0 ]
then
   echo "installation of git is failure"
   exit 2
else
   echo "installation of git is successfull"
fi



echo "is still script proceeding"
