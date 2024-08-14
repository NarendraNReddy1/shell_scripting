#!/bin/bash
USER_ID=$(id -u)
TIMESTAMP=$(date +%F-%M-%H-%S)
SCRIPT_NAME=$(echo $0|cut -d "." -f1)
LOG_FILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"


if [ $USER_ID -ne 0 ]
then
    echo "Please be a super user"
    exit 1
else 
    echo "You are super user"
fi

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo -e "$2..$R FAILURE $N"
        exit 1
    else
        echo -e "$2..$G SUCCESS $N"    

    fi
}



for i in $@
do
    echo "$i to installed"
    dnf list installed $i &>>$LOG_FILE
    if [ $? -eq 0 ]
    then 
        echo "$i already installed"     
    else
        dnf install $i -y &>>$LOG_FILE
        VALIDATE $? "installation of $i"
    fi    
done
