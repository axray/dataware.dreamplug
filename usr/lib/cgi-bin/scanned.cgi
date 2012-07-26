#!/bin/bash

hcitool -i hci0 scan --flush > /tmp/scanned_devices 

device_list=`cat /tmp/scanned_devices | grep -v Scanning`
IFS=`echo -en "\n\b"`

echo -e "Content-Type: text/html\n\n"
echo  "<HTML><head><link rel="stylesheet" type="text/css" href="/main.css">  </head>"
echo  "<head>"
echo  "<META HTTP-EQUIV=\"CACHE-CONTROL\" CONTENT=\"NO-CACHE\"></meta>"
echo  "<META HTTP-EQUIV=\"EXPIRES\" CONTENT=\"0\">"
echo  "<META HTTP-EQUIV=\"PRAGMA\" CONTENT=\"NO-CACHE\">"
echo  "</head>"

echo "<body class=right>"

echo "<div align=\"left\"><h2>"
echo "The list of devices in the vicinity"
echo "</h2></div>"
echo  "<div align=\"left\">"
echo "<form method=GET action=\"/cgi-bin/scanned.cgi\">"
echo "<input type=submit value=\"Rescan the vicinity\">"
echo "</form></div>"
echo "<div align=\"left\">"
echo "<form action=\"associate.cgi\" method=\"GET\">"
echo "<table border=\"1\"><th>MAC Address</th><th>Device Name</th>"
for device in $device_list ; do
     echo "<tr>"
     mac=`echo $device | awk '{print $1}'`
     name=`echo $device | awk '{print $2}'`
     echo "<td width=60%><input type=\"radio\" name=\"device\" value=\"$mac\">$mac</td>"
     echo "<td width=40%>$name</td>"
     echo "</tr>"
done
echo "</table>"
echo "<p><br>Now select one of the above devices and click on the button below.<br></p>"
echo  "<input type=\"submit\" value=\"Associate with the device\">"
echo  "</form></div>"
echo  "</body>"
echo  "</HTML>"

rm -f /tmp/scanned_devices 
