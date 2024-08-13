#!/bin/bash
user_id=$(id -u)

if [ $user_id -ne 0 ]
then
    echo "Please run as root user::::"
    exit 1
else
    echo "You are super user"
fi

dnf install mysql -y 

if [ $? -ne 0 ]
then
    echo "Installed of mysql failed...FAILURE"
    exit 1
else 
    echo "Installation of mysql... SUCCESS"    
fi

dnf install git -y 

if [ $? -ne 0 ]
then 
    echo "Installation of git...FAILURE"
    exit 1
else 
    echo "Installation of git...SUCCESS"
fi        

echo "Installation are over"