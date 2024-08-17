#!/bin/bash

R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

PATH="\tmp\app-logs"

if [ -d $PATH ]
then 
    echo "$PATH exists"
else 
    echo "$PATH does not exists"
done 

