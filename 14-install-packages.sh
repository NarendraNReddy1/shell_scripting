#!/usr/bin
USER_ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOG_FILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
R="\e[31m"
G="\e[32m"
N="\e[0m"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2...$R FAILURE $N"
        exit 1
    else
        echo -e "$2...$G SUCCESS $N"    

    fi
}

if [ $USER_ID -ne 0 ]
then
    echo "Be a super user.."
    exit 1
else 
    echo "You are super user...."
fi

for i in $@
do
    echo "package to install: $i"
    dnf list installed $i &??$LOG_FILE
    VALIDATE $? "Installation $i"
    
done