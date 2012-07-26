#!/bin/bash

echo -e "Content-Type: text/html\n\n"
echo  "<HTML><head><link rel="stylesheet" type="text/css" href="/main.css">  </head>"
echo  "<head></head>"

echo "<body class=right>"

echo "<div align=\"center\"><h2>"
echo "Switching the mode of Wireless SheevaPlug"
echo "</h2></div>"
mode=`echo $QUERY_STRING | cut -d'=' -f 2`
echo "<div align=\"center\"><ul>"
echo "<li>Switching the mode to -> $mode </li>"
if [ "$mode" == "WLAN_CLI" ]; then
    ip_addr=`/sbin/ifconfig eth0 | grep "inet addr" | awk '{print $2}' | cut -d ':' -f 2`
    echo "&nbsp; &nbsp;"
    echo "<li>Now that you are in WLAN mode - you would want to associate with existing wireless networks in the area - <br> please follow the below link - <br> <a href=\"http://$ip_addr/cgi-bin/wlan_client.cgi\" target=\"__new\">WLAN Client Demo </a></li>"
fi

echo "</ul></div>"
echo  "</body>"
echo  "</HTML>"

if [ "$mode" == "AP" ] ; then
    sudo /usr/bin/uap.sh > /dev/null  &
else
    sudo /usr/bin/wlan.sh > /dev/null &
fi
