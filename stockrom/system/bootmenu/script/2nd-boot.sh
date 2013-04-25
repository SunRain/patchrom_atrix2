#!/system/bootmenu/binary/busybox ash

######## BootMenu Script
######## Execute [2nd-boot] Menu


export PATH=/sbin:/system/xbin:/system/bin

######## Main Script

exit 0

mount -o remount,rw /

cp /system/bootmenu/2nd-boot/* /
chown 0:2000 /kexec
chmod 755 /kexec

#killall ueventd

#ADBD_RUNNING=`ps | grep adbd | grep -v grep`
#if [ -z "$ADB_RUNNING" ]; then
#     rm -f /sbin/adbd.root
#     rm -f /data/usbd/current_state
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
# fi


## unmount devices
sync
#umount -l /acct
#umount -l /mnt/asec
#umount -l /dev/cpuctl
#umount -l /dev/pts
#umount -l /mnt/obb
#umount -l /cache
#umount -l /data
#umount -l /preinstall
#umount -l /pds
# as we use /sbin/bootmenu as busybox functions, we don't need system mount
#umount -l /system

######## Cleanup

#rm -f /sbin/lsof

## busybox cleanup..
#for cmd in $(/sbin/busybox --list); do
#  [ -L "/sbin/$cmd" ] && rm "/sbin/$cmd"
#done

#rm /sbin/busybox

## used for adbd shell (can be bash also)
/system/xbin/ln -s /system/xbin/busybox /sbin/sh

## reduce lcd backlight to save battery
#echo 18 > /sys/class/leds/lcd-backlight/brightness


echo 1 > /sys/class/leds/green/brightness
usleep 20000
echo 0 > /sys/class/leds/green/brightness


cd /

######## Let's go
usleep 1000

insmod uart.ko
insmod arm_kexec.ko
insmod kexec.ko

./kexec -l kernel --devtree=devtree --ramdisk=ramdisk.img
sleep 1 
./kexec -e


