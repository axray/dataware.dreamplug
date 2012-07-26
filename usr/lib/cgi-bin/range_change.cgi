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

param_C=`echo $QUERY_STRING | cut -d'=' -f 2 | cut -d '&' -f 1`
param_D1=`echo $QUERY_STRING | cut -d'=' -f 3 | cut -d '&' -f 1`
param_D2=`echo $QUERY_STRING | cut -d'=' -f 5`

sudo /usr/bin/uaputl bss_stop > /dev/null
sudo /sbin/ifconfig uap0 192.168.$param_C.1
sudo /usr/bin/uaputl bss_start > /dev/null
sudo killall udhcpd > /dev/null

#Remove the leases file
sudo /bin/rm -f /var/lib/udhcpd.leases > /dev/null

max_leases=`expr $(expr $param_D2 - $param_D1) + 1`

echo -e "start 192.168.$param_C.$param_D1 \nend 192.168.$param_C.$param_D2\ninterface uap0\nopt      lease  86400\nopt     router  192.168.$param_C.1\nopt     subnet  255.255.255.0\nopt     dns     192.168.$param_C.1\nopt     domain     localdomain\nmax_leases     $max_leases \nlease_file     /var/lib/udhcpd.leases \nauto_time       5" > /etc/udhcpd.conf

sudo /usr/sbin/udhcpd > /dev/null

echo "<div align=\"center\">"
echo "<ul>"
echo "<li>The DHCP IP address range has been configured!</li>"
echo "</ul>"
echo "</div>"

echo "</body>"
echo "</HTML>"
