#!/bin/bash
user_id=$(id -u)

set -e 

if [ $user_id -ne 0 ]
then
    echo "Please run as root user::::"
    exit 1
else
    echo "You are super user"
fi

dnf install mysqllllll -y 



dnf install git -y 

       

echo "Installation are over"