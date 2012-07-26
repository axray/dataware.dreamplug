#!/bin/bash

echo -e "Content-Type: text/html\n\n"
echo  "<HTML name=document>"
echo  "<head>"
start_usbmodem()
{
	sudo /usr/bin/killall pppd
        echo "" > /tmp/peers-gprs
        echo "" > /tmp/chat-gprs
        echo "" > /tmp/chap-secrets

        conf_file="/tmp/peers-gprs"
        script_file="/tmp/chat-gprs"
        auth_file="/tmp/chap-secrets"

        echo "ABORT 'BUSY'" > $script_file
        echo "ABORT 'NO CARRIER'" >> $script_file
        echo "ABORT 'ERROR'"  >> $script_file
        echo "'' AT"  >> $script_file
        echo "OK ATZ"  >> $script_file
        if [ ! -z "$init1" ]
        then
                echo "OK '$init1'"  >> $script_file
        fi
        if [ ! -z "$init2" ]
        then
                echo "OK '$init2'"  >> $script_file
        fi
        echo "OK ATD$num"  >> $script_file
        echo "CONNECT"  >> $script_file
        echo "$username  *  $password  *" >$auth_file

        echo -e "hide-password\n/dev/ttyACM0\n"$baudrate"\ndebug\ncrtscts\ndefaultroute\nnoipdefault\nusepeerdns\nnoauth\nuser "$username"\nmaxfail 0\nconnect \"/usr/sbin/chat -v -f /etc/ppp/chat/gprs\"\npersist\nholdoff 5\nlcp-echo-interval 20\nlcp-echo-failure 4" > $conf_file
        #start pppd
        echo "#!/bin/sh" > /tmp/usbmodem.sh
        chmod 755 /tmp/usbmodem.sh

        echo "sudo /usr/sbin/pppd call gprs debug" >> /tmp/usbmodem.sh
	echo "sudo /sbin/ifconfig eth0 down" >> /tmp/usbmodem.sh
	echo "sudo /sbin/route delete default" >> /tmp/usbmodem.sh
	echo -e 'for i in 1 2 3\ndo\nif [ -z "`/sbin/ifconfig |grep ppp0`" ]; then\nsleep 5\nelse\nbreak\nfi\ndone' >> /tmp/usbmodem.sh
	echo -e 'if [ -z "`/sbin/ifconfig |grep ppp0`" ]; then\necho "Could not connect. Will keep trying..."\nelse\necho "Connected"\nfi' >> /tmp/usbmodem.sh
	/tmp/usbmodem.sh
}
echo "</head>"

echo "<body class=right>"

echo "<div align=\"center\"><h2>"
echo "Welcome to USB Modem Demo!"
echo "</h2>"
isp=`echo $QUERY_STRING | cut -d'=' -f 2`
. configs/$isp.cfg
sleep 2
echo "Connection Status of $name : "
if [ -z "`/sbin/ifconfig |grep ppp0`" ]; then
start_usbmodem
else
echo "Connected"
fi 
echo "<br><br>"
echo "<form method=GET action=\"/cgi-bin/usbmodem.cgi\">"
echo "<input type=submit value=\"Back\">"
echo "</form>"
echo "</div>"
echo  "</body>"
echo  "</HTML>"
