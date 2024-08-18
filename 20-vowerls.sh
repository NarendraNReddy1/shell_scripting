#!/bin/bash

echo "Enter the string::::"
read str1
vowels=0
vowel_string="aeiouAEIOU"

while IFS= read -r i
do
    if [ $i in vowel_string ]
    vowels=$vowels+1
done <<< $str1
echo $vowels