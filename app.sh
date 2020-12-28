#!/bin/bash

echo Hello, who am I talking to?
read full_name
echo
echo "It\'s nice to meet you $full_name. Please set your alert time. [E.g: 19:30]"
printf "Input Hour. [E.g: 19]: "
read -r hr
printf "Input Minute. [E.g: 30]: "
read -r min
echo
echo Select weekday.
echo    0. Sunday
echo    1. Monday
echo    2. Tuesday
echo    3. Wednesday
echo    4. Thursday
echo    5. Friday
echo    6. Saturday
echo
printf "Choose 0-6 [0]: "
read -r day
printf "Alert Description: "
read -r description

echo '{ "full_name": "'$full_name'", "day": "'$day'", "hr": "'$hr'", "min": "'$min'", "description": "'$description'" }' > data.json
echo
echo "Excecute 'crontab -e' and add this line"
echo "$min $hr * * $day $PWD/linux-alert-service/alert.sh"