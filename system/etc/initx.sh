#!/system/bin/sh
#
# Ensure init.d folder is executed for tweaks

mount -o remount,rw /
mount -o remount,rw /system

chmod 777 /system/etc/init.d
chmod 777 /system/etc/init.d/*

sh ./system/etc/init.d/*

mount -o remount,ro /
mount -o remount,ro /system
