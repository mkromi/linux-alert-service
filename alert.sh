full_name=$(jq '.full_name' data.json)
description=$(jq '.description' data.json)
zenity --notification --text "Hello $full_name\n$description" 