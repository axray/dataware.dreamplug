#!/bin/bash

echo -e "Content-Type: text/html\n\n"
echo  "<HTML><head><link rel="stylesheet" type="text/css" href="/main.css">  </head>"
echo  "<head></head>"

echo "<body class=right>"

echo "<div align=\"center\"><h2>"
echo "Welcome to Bluetooth Demo!"
echo "</h2>"
echo "<ul>"
echo "<li>Please make sure that the Bluetooth headphones are connected in a pairing mode."
echo "<li>After ensuring that the headphones are in pairing mode, click on the 'Scan for Devices in the vicinity' button below."
echo "</ul></div>"
echo "<div align=\"center\"><br><br>"
echo "<form method=GET action=\"/cgi-bin/scanned.cgi\">"
echo "<input type=submit value=\"Scan for Devices in the vicinity\">"
echo "<div align=\"center\"><br>The scanning will take a couple of minutes....</dev>"
echo "</form></div>"
echo  "</body>"
echo  "</HTML>"
