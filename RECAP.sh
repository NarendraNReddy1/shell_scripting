#!/usr/bin
R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOG_FILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log


echo "DevOps"
PERSON1="RAMESH"
PERSON2=$1
echo "Enter password"
read -s passwd
movies=("RRR" "RANGA")

echo "Hi $PERSON1 , Please talk to $PERSON2"
echo $passwd

echo "${movies[0]}"
echo "${movies[@]}"

echo "All: $@" #ALL
echo "No:$#"
echo "PID:$$"
echo "Background PID:$!"
echo "PWD:$PWD"
echo "HOSTNAME:$HOSTNAME"





