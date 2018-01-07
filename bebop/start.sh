#!/bin/sh

insmod crc-ccitt.ko
insmod slhc.ko
insmod ppp_generic.ko
insmod ppp_deflate.ko
insmod ppp_async.ko
insmod bsd_comp.ko
insmod usb_wwan.ko
insmod option.ko

echo -n "host" > /sys/devices/platform/ci_hdrc.0/role
#sleep 15
#/usr/bin/usb_modeswitch -v 12d1 -p 14fe -J
echo "12d1 1506" > /sys/bus/usb-serial/drivers/option1/new_id 

iwconfig eth0 essid "temp"

#echo -e "AT^NDISDUP=1,1,\"e-ideas\"\r" > /dev/ttyUSB0
