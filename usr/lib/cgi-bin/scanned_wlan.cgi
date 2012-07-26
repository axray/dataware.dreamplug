#!/bin/bash

sudo /sbin/ifconfig wlan0 up
sudo /sbin/iwlist wlan0 scanning | egrep 'ESSID:|Encryption key:' > /tmp/scanned_devices_wlan

echo -e "Content-Type: text/html\n\n"
echo  "<HTML>"
echo  "<head>"
echo  "<META HTTP-EQUIV=\"CACHE-CONTROL\" CONTENT=\"NO-CACHE\"></meta>"
echo  "<META HTTP-EQUIV=\"EXPIRES\" CONTENT=\"0\">"
echo  "<META HTTP-EQUIV=\"PRAGMA\" CONTENT=\"NO-CACHE\">"
echo  "</head>"

echo "<body class=right>"

echo "<div align=\"left\"><h2>"
echo "The list of available Wireless Networks"
echo "</h2></div>"
echo "<div align=\"left\">"
echo "This demo only lists the 'Unsecured'(Open Security) wireless networks.<br><br>"
echo "<form method=GET action=\"/cgi-bin/scanned_wlan.cgi\">"
echo "<input type=submit value=\"Rescan for Wireless Networks.\">"
echo "</form></div>"
echo "<div align=\"left\">"
echo "<form action=\"associate_wlan.cgi\" method=\"GET\">"
echo "<table border=\"1\"><th>Network Name</th>"

while read ssid
do
    read protection
    if echo $protection | grep :off > /dev/null
    then
       echo "<tr>"
       ssid=`echo $ssid | cut -d':' -f 2 | cut -d '"' -f 2`
       if [ "$ssid" == "\"\"" ] ; then
            ssid="Empty SSID"
       fi
       echo "<td width=60%><input type=\"radio\" name=\"ssid\" value=\"$ssid\">$ssid</td>"
       echo "</tr>"
    fi
done < /tmp/scanned_devices_wlan

echo "</table>"
echo "<p><br>Now select one of the above networks and click on the button below to associate.<br></p>"
echo  "<input type=\"submit\" value=\"Associate with the Wireless Network.\">"
echo  "</form></div>"
echo  "</body>"
echo  "</HTML>"

rm -f /tmp/scanned_devices_wlan
