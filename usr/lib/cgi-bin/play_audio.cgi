#!/bin/bash

echo -e "Content-Type: text/html\n\n"
echo  "<HTML><head><link rel="stylesheet" type="text/css" href="/main.css">  </head>"
echo  "<head></head>"

echo "<body class=right>"

echo "<div align=\"center\"><h2>"
echo "Listening to the sample Audio file"
echo "</h2>"
aplay -Dplug:headset /var/www/summerof69.wav &
echo "<ul><li>Thank You!</li></li>"
echo "</div>"
echo  "</body>"
echo  "</HTML>"
