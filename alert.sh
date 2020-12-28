#!/bin/bash

full_name=$(jq -r '.full_name' $PWD/linux-alert-service/data.json)
description=$(jq -r '.description' $PWD/linux-alert-service/data.json)
zenity --info --text="Hello $full_name\n$description" --display=:0.0