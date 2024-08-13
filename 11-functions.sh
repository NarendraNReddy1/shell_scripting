# #!/bin/bash

# user_id=$(id -u)
# TIMESTAMP=$(data +%F-%H-%M-%S)
# SCRIPT_NAME=$($0 | cut -d "." -f1)
# LOG_FILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log


# VALIDATE(){
#     if [ $1 -ne 0 ]
#     then
#         echo "$2...FAILURE"
#         exit
#     else
#         echo "$2...SUCCESS"    

#     fi
# }


# user_id=$(id -u)

# if [ $user_id -ne 0 ]
# then
#     echo "Please run as root user::::"
#     exit 1
# else
#     echo "You are super user"
# fi

# dnf install mysql -y 
# VALIDATE $? "Installation of MySQL"


# dnf install git -y 
# VALIDATE $? "Installation of GIT"


#!/usr/bin

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2....FAILURE"
    else 
        echo "$2....SUCCESS"
    fi
}


USER_ID=$(id -u)

if [ $USER_ID -ne 0 ]
then
    echo "Please try with super user login...."
    exit 1 
else 
    echo "Now you are super user..."
fi


dnf install mysql -y
VALIDATE $? "Instllation of mySQL"

dnf install git -y
VALIDATE $? "Instllation of git"
