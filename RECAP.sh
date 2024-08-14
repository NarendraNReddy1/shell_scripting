#!/usr/bin
echo "DevOps"
PERSON1="RAMESH"
PERSON2=$1
echo "Enter password"
read -s passwd
movies=("RRR" "MOVIES")

echo "Hi $PERSON1 , Please talk to $PERSON2"
echo $passwd

echo "${movies[0]}"
echo "all: ${movies[$@]}"
