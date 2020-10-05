#!/bin/bash

echo Hello, who am I talking to?
read full_name
echo
echo It\'s nice to meet you $full_name. Please set your alert time. E.g: 19:30
read alert_time
echo
echo Select weekday.
echo    1. Saturday
echo    2. Sunday
echo    3. Monday
echo
echo Choose 1-7 [1]:
read weekdays
# zenity --notification --text "It\'s nice to meet you $full_name" 