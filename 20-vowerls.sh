#!/bin/bash

echo "Enter the string::::"
read str1
vowels=0

while IFS= read -r i
do
    if [ $i in [(aeiouAEIOU)] ]
    vowels=vowels+1
done <<< $str1
echo $vowels