#!/bin/sh

# The firmware files are -> sd8688.bin & sd8688_helper.bin
# The firmware files need to be present in /lib/firmware
rmmod libertas_sdio libertas
cp /root/firmware/sd8688* /lib/firmware/
/etc/init.d/udhcpd stop
/etc/init.d/dnsmasq stop

echo 2 > /proc/uap/uap0/hwstatus
ifconfig uap0 down
rmmod uap8xxx

modprobe libertas_sdio

# This will be deleted on bootup. 
# Bootup by-default is always AP mode.
touch /etc/wlanclient.mode
# Delete the firmware immediately so that next bootup is in AP mode.
rm -f /lib/firmware/sd8688*

# The newly created interface will be eth(n)  

# The following command lists all the available wireless networks
# iwlist <ifc-name> scanning
# To connect to a particular SSID
# iwconfig <ifc-name> <essid>

#Set leds for client mode
echo 0 > `eval ls /sys/class/leds/guruplug\:green\:wmode/brightness`
echo 1 > `eval ls /sys/class/leds/guruplug\:red\:wmode/brightness`


