#!/bin/bash

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2...FAILURE"
        exit
    else
        echo "$2...SUCCESS"    

    fi
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

