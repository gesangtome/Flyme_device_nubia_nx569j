#!/system/bin/sh

ROOT_DIR="/data/nblog/"
LOG_DIR="/data/nblog/feedback/power/"

/system/bin/mkdir -p $LOG_DIR
/system/bin/touch $LOG_DIR/ps.txt
/system/bin/touch $LOG_DIR/top.txt
/system/bin/touch $LOG_DIR/dump_alarm.txt
/system/bin/touch $LOG_DIR/dump_power.txt
/system/bin/touch $LOG_DIR/dump_batterys.txt
/system/bin/touch $LOG_DIR/uevent.txt
/system/bin/chwon -R root:system $ROOT_DIR
/system/bin/chmod -R 766 $ROOT_DIR


/system/bin/ps >> $LOG_DIR/ps.txt
/system/bin/top -m 20 -n 3 -t -s cpu >> $LOG_DIR/top.txt
/system/bin/cat /sys/class/power_supply/battery/uevent >> $LOG_DIR/uevent.txt
/system/bin/dumpsys alarm >> $LOG_DIR/dump_alarm.txt
/system/bin/dumpsys power >> $LOG_DIR/dump_power.txt
/system/bin/dumpsys battery >> $LOG_DIR/dump_batterys.txt
/system/bin/dumpsys batteryproperties >> $LOG_DIR/dump_batterys.txt
/system/bin/dumpsys batterystats >> $LOG_DIR/dump_batterys.txt

