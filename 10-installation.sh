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
    echo "Installed failed. pls check...."
    exit 1
else 
    echo "Installation of mysql.... SUCCESS"    
fi

dnf install git -y 

if [ $? -ne 0 ]
then 
    echo "Installation failed . Pls check ..."
    exit 1
else 
    echo "Installation of git ... SUCCESS"
fi        

echo "Installation are over"