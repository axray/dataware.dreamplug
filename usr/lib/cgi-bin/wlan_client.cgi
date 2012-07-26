#!/bin/bash

echo -e "Content-Type: text/html\n\n"
echo  "<HTML>"
echo  "<head></head>"

echo "<body class=right>"

echo "<div align=\"center\"><h2>"
echo "Welcome to Wireless Client Demo!"
echo "</h2>"
echo "<ul>"

if [ -f "/etc/wlanclient.mode" ] ; then
    echo "<li>The Wireless Sheevaplug is currently in WLAN Client mode.</li>"
    echo "<li>Please click on the 'Scan for Wireless Networks' button below.</li>"
    echo "</ul></div>"
    echo "<div align=\"center\"><br><br>"
    echo "<form method=GET action=\"/cgi-bin/scanned_wlan.cgi\">"
    echo "<input type=submit value=\"Scan for Wireless Networks in the area.\">"
    echo "<div align=\"center\"><br>The scanning will take a couple of minutes....</dev>"
    echo "</form></div>"
else
    echo "<li>The Wireless Sheevaplug is currently in AP mode.</li>"
    echo "<li>For the wireless client functionality to be activated it has to be in WLAN-BT mode.</li>"
    echo "<li>Please go to mode-switch page and switch the mode to WLAN-BT and then access this page again!</li>"
    echo "<li><a href="/cgi-bin/mode-switch.cgi">mode-switch.cgi</a></li>"
    echo "</ul></div>"
fi
echo  "</body>"
echo  "</HTML>"
