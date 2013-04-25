#!/system/bootmenu/binary/busybox ash

######## BootMenu Script
######## Execute [2nd-init] Menu


export PATH=/sbin:/system/xbin:/system/bin

######## Main Script

mount -o remount,rw /

cp -r -f /system/bootmenu/2nd-init/* /
chmod 755 /*.rc
chown 0:0 /*.rc

cp /system/bootmenu/binary/2nd-init /sbin/2nd-init
chmod 755 /sbin/2nd-init
chown 0:0 /sbin/2nd-init
rm -f /sbin/ueventd
ln -s /init /sbin/ueventd

killall ueventd

ADBD_RUNNING=`ps | grep adbd | grep -v grep`
if [ -z "$ADB_RUNNING" ]; then
     rm -f /sbin/adbd.root
     rm -f /data/usbd/current_state
    #delete if is a symlink
  #    [ -L "/tmp" ] && rm -f /tmp
  #    mkdir -p /tmp
 #else
    # well, not beautiful but do the work
 #     to keep current usbd state
 #     if [ -L "/tmp" ]; then
 #         mv /tmp/usbd_current_state / 2>/dev/null
 #         rm -f /tmp
 #         mkdir -p /tmp
 #         mv /usbd_current_state /tmp/ 2>/dev/null
 #     fi
fi


## unmount devices
sync
umount -l /acct
umount -l /mnt/asec
umount -l /dev/cpuctl
umount -l /dev/pts
umount -l /mnt/obb
umount -l /cache
umount -l /data
umount -l /preinstall
umount -l /pds
# as we use /sbin/bootmenu as busybox functions, we don't need system mount
#umount -l /system

######## Cleanup

#rm -f /sbin/lsof

## busybox cleanup..
for cmd in $(/sbin/busybox --list); do
  [ -L "/sbin/$cmd" ] && rm "/sbin/$cmd"
done

rm /sbin/busybox

## used for adbd shell (can be bash also)
/system/xbin/ln -s /system/xbin/busybox /sbin/sh

## reduce lcd backlight to save battery
#echo 18 > /sys/class/leds/lcd-backlight/brightness


echo 1 > /sys/class/leds/green/brightness
usleep 20000
echo 0 > /sys/class/leds/green/brightness


######## Let's go
usleep 1000
/sbin/2nd-init


