#!/system/bin/sh

echo PLAY bootup tone
#enable
bootsound /system/media/audio/ui/bootup.wav -v 72 -D hw:0,0

echo STOP bootup tone
#disable
exit
