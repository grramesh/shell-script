#1/bin/bash
#to practice installing packages by shell scripting.
#choosen random packages like mysql, gcc, chrony,fail2ban,postgis2_94
# steps-->log redirection-->colours are mandatory--->user has root access are not-->send packages to install as parameters 
# sudo sh install-packages mysql gcc docker---->special variable to get all params --> $@


USERID=$(id -u)    #to check whether is having root access or not
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log #It will log in tmp directory as .log   

VALIDATE(){    
       if [ $1 -ne 0 ]
      then
         echo -e "$2..$R FAILURE $N"
         exit 1
      else
         echo -e "$2.. $G SUCCESS $N"
    fi 
}


if [ $USERID -ne 0 ]
then 
    echo "please run this script in root access"
    exit 1 # manually exit if error come.# 
else
echo "you are root user." 

fi

for i in $@
do 
   echo "packages to install: $i"
   dnf list installed $i   &>>$LOGFILE # to check $i packages installed or not
   if [ $? -eq 0 ]
   then
       echo "$i already installed ..skipping"
     else   
       echo"$i nit installed...need to install"  
done   