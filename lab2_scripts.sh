#!/bin/bash
# Author: Trevor Hunter
# Date: 1/31/19

#have user enter regular expression and file name
echo "Enter regular expression: "
read regex
echo "Enter file name: "
read filename

#run regex on file
grep -E $regex $filename

#count phone numbers
grep -Ec "^[0-9]{3}-[0-9]{3}-[0-9]{4}*$" regex_practice.txt

#count emails
grep -Ec "^[A-Za-z0-9].*@.*\.com*$" regex_practice.txt

#list all phone numbers with "303" area code
#store results in "phone_results.txt"
grep -E "303-[0-9]{3}-[0-9]{4}" regex_practice.txt >  phone_results.txt

#list all emails from geocities.com
#store results in "email_results.txt"
grep -E "[A-Za-z].*@geocities.com" regex_practice.txt > email_results.txt

#list all lines that match a cmd line regex
#store results in "command_results.txt"
grep $1 $2 > command_results.txt
