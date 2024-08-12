#!/bin/bash

# $$ -pid
# $!- background
# $HOME 
# $PWD 
# $@ -- ALL 
# $# - number 
# $HOSTNAME 


echo "All $@"
echo "Count $#"
echo "Script name: $0"

echo "Home: $HOME"
echo "Pwd: $PWD"
echo "Hostname: $HOSTNAME"
echo "User: $USER"

echo "Executing pid:$$"
sleep 60
echo "Executing background: $!"
sleep 60 &
