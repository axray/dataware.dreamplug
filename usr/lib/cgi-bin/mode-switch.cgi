#!/bin/bash

echo -e "Content-Type: text/html\n\n"
echo  "<HTML><head><link rel="stylesheet" type="text/css" href="/main.css">  </head>"
echo  "<head></head>"

echo "<body class=right>"

echo "<div align=\"center\"><h2>"
echo "Switching the mode of Wireless SheevaPlug"
echo "</h2>"
echo "<ul>"
echo "<li>Wireless SheevaPlug can be in AP mode or in WLAN Client mode."
echo "<li>Note that after every Reboot, the Wireless SheevaPlug will be in AP mode."
echo "</ul></div>"

if [ ! -e /etc/wlanclient.mode ]
then
	echo "<div align=\"center\">"
	echo "<form action=\"/cgi-bin/do-switch.cgi\" method=\"GET\">"
	echo "<input type=\"radio\" name=\"mode\" value=\"WLAN_CLI\">WLAN Client Mode<br><br>"
	echo  "<input type=\"submit\" value=\"Switch the mode!\">"
	echo  "</form>"
	echo "<ul>"
	echo "<li>After the switch to WLAN Client mode the AP functionality will be lost.</li>"
	echo "<li>So if you are currently associated with the AP, you will be disassociated.</li>"
	echo "<li>The current IP address of Wireless SheevaPlug on the WAN side is : "
	ip_addr=`/sbin/ifconfig eth0 | grep "inet addr" | awk '{print $2}' | cut -d ':' -f 2`
	echo "<a href=\"http://$ip_addr/\">$ip_addr</a></li>"
	echo "<li>After the switch, you can access the Wireless Sheevaplug directly by inserting the above IP address in your browser window.</li>"
	echo  "</div>"
else
	echo "<div align=\"center\"><ul><li>The Wireless Sheevaplug is already in WLAN client mode. It will go back to the AP mode after a reboot.</li></ul></div>"
	echo "<div align=\"center\"><input type=\"radio\" disabled=\"yes\"  name=\"mode\" value=\"WLAN_CLI\" checked>WLAN Client Mode</div>"
fi
echo  "</body>"
echo  "</HTML>"
