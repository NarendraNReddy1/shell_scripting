#!/bin/bash

echo "Enter the string::::"
read str1
# vowels=0
# vowel_string="aeiouAEIOU"

v=$(echo $str1 | grep -o -i "[aeiou]" | wc -l)

# while IFS= read -r i
# do
#     if [ $i in vowel_string ]
#     vowels=$vowels+1
# done <<< $str1
echo $v