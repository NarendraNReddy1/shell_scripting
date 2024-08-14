#!/bin/bash
USER_ID=$(id -u)

if [ $USER_ID -ne 0 ]
then
    echo "Please be a super user"
    exit 1
else 
    echo "You are super user"
fi



for i in $@
do
    echo $i
done
