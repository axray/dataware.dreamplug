#!/bin/sh

#mount /dev/sdc2 /mnt
insmod /root/openvswitch-1.4.2/datapath/linux/openvswitch_mod.ko
insmod /root/openvswitch-1.4.2/datapath/linux/brcompat_mod.ko

#start openvswitch

cd /root/openvswitch-1.4.2

#create the config file if doesn't exist

/usr/local/bin/ovsdb-tool create ovsdb.conf vswitchd/vswitch.ovsschema

#start the server

/usr/local/sbin/ovsdb-server ovsdb.conf --remote=punix:/var/run/ovsdb-server &

#start vswictchd

/usr/local/sbin/ovs-vswitchd unix:/var/run/ovsdb-server &

#configure the server (should only ever need to do once, but we'll do it at each reboot)

/usr/local/bin/ovs-vsctl --db=unix:/var/run/ovsdb-server init
/usr/local/bin/ovs-vsctl --db=unix:/var/run/ovsdb-server add-br br0
/usr/local/bin/ovs-vsctl --db=unix:/var/run/ovsdb-server set-fail-mode br0 standalone
/usr/local/bin/ovs-vsctl --db=unix:/var/run/ovsdb-server set-controller br0 tcp:127.0.0.1:6633
/usr/local/bin/ovs-vsctl --db=unix:/var/run/ovsdb-server add-port br0 uap0

#sort out network interfaces and reboot access point daemon

ifconfig br0 192.168.1.1 up

/etc/init.d/udhcpd stop
/etc/init.d/udhcpd start
ifconfig uap0 0.0.0.0 up

#ifconfig eth1 0.0.0.0 down
/usr/bin/uaputl bss_stop
/usr/bin/uaputl bss_start

#start the hwdb server

cd /root/hwdb
./hwdbserver -c hwdb.rc &

#persist the dns request table
./persist -d data -e DNSRequestLast -t DNSRequest -a mysql &
./persist -d data -e EnergyUseLast -t EnergyUse -a mysql &

#start nox

cd /root/nox/build/src

./nox_core -v -i ptcp:localhost monitorswitch switch &

#ifconfig eth1 up

