#!/usr/bin

USER_ID=$(id -u)

if [ USER_ID -ne 0 ]
then
    echo "Be a super user.."
    exit 1
else 
    echo "You are super user...."
fi

for i in $@
do
    echo "All packages: $i"
done