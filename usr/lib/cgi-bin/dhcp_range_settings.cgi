#!/bin/bash

echo -e "Content-Type: text/html\n\n"
echo  "<HTML name=document>"
echo  "<head>"
echo "</head>"

echo "<body class=right>"
echo "<div align=\"center\"><h2>"
echo "DHCP Address Range Settings"
echo "</h2>"
echo "</div>"

param=`echo $QUERY_STRING | cut -d'=' -f 1`
if [ "$param" == "range_C" ] ; then
    param_C=`echo $QUERY_STRING | cut -d'=' -f 2`
    echo "<div align=\"center\">"
    echo "<form method=GET action=\"range_change.cgi\">"
    echo "<ul>"
    echo "<li>Enter the start address : 192.168."
    echo "<input type=\"text\" name=\"range_C\" value=\"$param_C\" size=\"1\" readonly>"
    echo "<input type=\"text\" name=\"range_D1\" value=\"100\" size=\"1\">"
    echo "</li><br>"
    echo "<li>Enter the end address : 192.168."
    echo "<input type=\"text\" name=\"range_C\" value=\"$param_C\" size=\"1\" readonly>"
    echo "<input type=\"text\" name=\"range_D2\" value=\"200\" size=\"1\">"
    echo "</li><br>"
    echo "<input type=\"submit\" value=\"Configure the address range.\">"
    echo "<br><br>"
    echo "If you are currently associated with SheevaPlug Wifi in AP mode, <br> please note that you will be disassociated and will need to associate again after the new address range is configured <br>This will ensure that you can receive an IP address from the new range."
    echo "<br><br>Also note that, once you have associated again, you need to access the readme through -> <br> <a href=\"192.168.$param_C.1\" target=\"__new\">192.168.$param_C.1</a>"
    echo "</form>"
    echo "</ul>"
    echo "</div>"
else
    echo "<div align=\"center\">"
    echo "<form method=GET action=\"dhcp_range_settings.cgi\">"
    echo "<ul>"
    echo "<li>Enter the value for subnet and then proceed to range selection. </li>"
    echo "<li>192.168."
    echo "<input type=\"text\" name=\"range_C\" value=\"1\" size=\"1\">.x"
    echo "</li>"
    echo "</ul>"
    echo "<input type=\"submit\" value=\"Configure the address range.\">"
    echo "<break/>"

    echo "</form>"
    echo "</div>"
fi

echo "</body>"
echo "</HTML>"
