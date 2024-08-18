#!/bin/bash

echo "Enter the string::::"
read str1

while IFS= read -r i
do
    echo $i
done <<< $str1