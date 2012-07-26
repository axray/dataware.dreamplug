#!/bin/bash

echo -e "Content-Type: text/html\n\n"
echo  "<HTML>"
echo  "<head></head>"

echo "<body class=right>"

echo "<div align=\"center\"><h2>"
echo "Association with the Wireless Network"
echo "</h2>"
essid=`echo $QUERY_STRING | cut -d'=' -f 2`
echo "Associating with the wireless network having SSID : <b>$essid</b>"
sudo /sbin/iwconfig wlan0 essid $essid
if [ -f /var/run/dhclient.wlan0.pid ] ; then
    pid=`cat /var/run/dhclient.wlan0.pid`
    sudo /bin/kill -9 $pid
fi
sudo /sbin/dhclient3 -pf /var/run/dhclient.wlan0.pid wlan0  > /dev/null &
sudo /bin/sleep 5
echo "<br><br><ul>"
echo "<li>The Wireless Sheevaplug is now associated with the wireless network that you had specified. </li>"
ip_addr=`/sbin/ifconfig wlan0 | grep "inet addr" | awk '{print $2}' | cut -d ':' -f 2`
if [ "$ip_addr" == "" ] ; then
    echo "<li>The Wireless Sheevaplug has not yet received an IP address from the AP that you have associated with. </li>"
else
    echo "<li>The IP address received by the Wireless Sheevaplug from the AP that you have associated with is : $ip_addr </li>"
fi
echo "</ul></div>"

echo "<div align=\"center\"><h2>"
echo "WiFi Client Demo"
echo "</h2>"
echo "<ul>"
echo "<li>You can now associate any other device/laptop with the same AP that the Wireless Sheevaplug is associated with.</li>"
echo "<li>Once your laptop is also associated, you can access the LAMP stack applications running on your Wireless Sheevaplug like Plogger by clicking this\
 link  <br> <a href=\"http://$ip_addr/plogger\" target=\"__new\">$ip_addr/plogger</a></li>"
echo  "</ul></div>"
echo  "</body>"
echo  "</HTML>"
