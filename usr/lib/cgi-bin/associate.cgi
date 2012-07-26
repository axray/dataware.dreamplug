#!/bin/bash

echo -e "Content-Type: text/html\n\n"
echo  "<HTML><head><link rel="stylesheet" type="text/css" href="/main.css">  </head>"
echo  "<head></head>"

echo "<body class=right>"

echo "<div align=\"center\"><h2>"
echo "Association with the Device"
echo "</h2>"
mac=`echo $QUERY_STRING | cut -d'=' -f 2`
mac=`echo $mac | sed 's/%3A/:/g'`
echo "<ul>"
sudo /usr/bin/bt_headphones.py $mac
ret=$?
# echo "$ret"
if [ "$ret" == "1" ]
then
    echo "<form method=GET action=\"/cgi-bin/associate.cgi\">"
    echo "<li>Associating with device : <br> <input type=\"radio\" name=\"device\" value=\"$mac\" checked>$mac<br> </li>"
    echo "&nbsp; &nbsp;"
    echo "<li>/usr/bin/bt_headphones.py failed!</li>"
    echo "<li>/usr/bin/mute-agent: Using default BT pin 0000</li>"
    echo "&nbsp; &nbsp;"
    echo "<input type=submit value=\"Try associating again.\">"
else
    echo "&nbsp; &nbsp;"
    echo "<form method=GET action=\"/cgi-bin/play_audio.cgi\">"
    echo "<input type=submit value=\"Play the sample audio file\">"
fi
echo "</ul></div>"
echo  "</body>"
echo  "</HTML>"
