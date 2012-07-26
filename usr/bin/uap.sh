#!/bin/sh

# The firmware files are -> helper_sd.bin & sd8688_ap.bin
# The firmware files need to be present in /lib/firmware/mrvl

# The kernel module is present in /usr/app/drivers/

# The uaputl binary is present in /usr/bin/


# Since this is the default boot-up mode. Stuff in here should 
# also be performed in ubuntu_rfs.sh or the Makefile.

# NOT REQUIRED
# This is no longer required since the plug will always boot-up in
# uap mode by default. This solves the problem of IP Address guessing
# in case of Bluetooth.

echo "Not supported yet"

