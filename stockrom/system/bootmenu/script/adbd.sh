#!/system/bootmenu/binary/busybox ash

######## BootMenu Script
######## Execute [ADB Daemon] Menu

source /system/bootmenu/script/_config.sh

######## Main Script

mkdir -p /tmp
chown system.shell /tmp
chmod 0777 /tmp

busybox mount -o remount,rw /system
# acm to disable MSC
sync
#echo acm > /dev/usb_device_mode
#sleep 1


    write /sys/class/android_usb/android0/enable 0 >> /system/log.txt
    
    #busybox kill `busybox pidof adbd`
    
    write /sys/class/android_usb/android0/idVendor 22b8 >> /system/log.txt
    write /sys/class/android_usb/android0/idProduct 4362 >> /system/log.txt
    write /sys/class/android_usb/android0/functions mtp,usbnet,adb >> /system/log.txt
    write /sys/class/android_usb/android0/enable 1 >> /system/log.txt

  sync  
#echo charge_adb > /dev/usb_device_mode
#echo usb_mode_charge_adb > /tmp/usbd_current_state

echo msc_adb > /dev/usb_device_mode
echo usb_mode_charge_adb > /tmp/usbd_current_state

# busybox ash history
mkdir -p /cache/bootmenu
export HISTFILE=/cache/bootmenu/.ash_history
export HISTFILESIZE=256

export PATH=/sbin:/system/xbin:/system/bin:$PATH

/sbin/adbd.root &

#busybox ps >>  /system/log.txt

#logcat >> /system/log2.txt &

exit 0
