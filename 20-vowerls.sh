#!/bin/bash

echo "Enter the string::::"
read str1


v=$(echo $str1 | grep -o -i "[aeiou]" | wc -l)


echo $v