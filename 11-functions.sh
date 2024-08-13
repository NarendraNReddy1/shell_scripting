#!/bin/bash

VALIDATE(){
    echo "First parameter:$1"
    echo "Second parameter:$2"
}


user_id=$(id -u)

if [ $user_id -ne 0 ]
then
    echo "Please run as root user::::"
    exit 1
else
    echo "You are super user"
fi

dnf install mysql -y 
VALIDATE $? "Installation of MySQL"


dnf install git -y 
VALIDATE $? "Installation of GIT"

