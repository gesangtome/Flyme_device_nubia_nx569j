#!/system/bin/sh

ROOT_DIR="/data/nblog/"
LOG_DIR="/data/nblog/power/stop"

/system/bin/mkdir -p $LOG_DIR
/system/bin/touch $LOG_DIR/ps.txt
/system/bin/touch $LOG_DIR/wakeup_sources.txt
/system/bin/touch $LOG_DIR/rpm_stats.txt
#/system/bin/touch $LOG_DIR/gpio.txt
/system/bin/touch $LOG_DIR/capacity.txt
/system/bin/touch $LOG_DIR/bugreport.txt
/system/bin/chwon -R root:system $ROOT_DIR
/system/bin/chmod -R 766 $ROOT_DIR


/system/bin/ps -t -p -P -x -c >> $LOG_DIR/ps.txt
/system/bin/cat /sys/kernel/debug/wakeup_sources >> $LOG_DIR/wakeup_sources.txt
/system/bin/cat /sys/kernel/debug/rpm_stats >> $LOG_DIR/rpm_stats.txt
#/system/bin/cat /sys/kernel/debug/gpio >> $LOG_DIR/gpio.txt
/system/bin/cat /sys/class/power_supply/battery/capacity >> $LOG_DIR/capacity.txt
/system/bin/date >> $LOG_DIR/capacity.txt
/system/bin/bugreport >> $LOG_DIR/bugreport.txt

