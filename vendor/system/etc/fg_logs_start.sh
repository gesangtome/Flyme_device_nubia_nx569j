#!/system/bin/sh

local count=0
local utime
local ktime
local cache_size
local pause_time=10
local file_nubmer=0
local del_file_nubmer=0
local file_size=0
local max_size=0
local countn=0
local nblog_enable
LOG_DIR=$1

/system/bin/touch $LOG_DIR/fg_$file_nubmer.txt

dump_peripheral () {
	local base=$1
	local size=$2
	local dump_path=$3
	echo $base > $dump_path/address 
	echo $size > $dump_path/count 
	cat $dump_path/data
}


echo "Starting dumps!" >> $LOG_DIR/fg_$file_nubmer.txt
echo "Dump path = $dump_path, pause time = $pause_time" >> $LOG_DIR/fg_$file_nubmer.txt

echo "SRAM and SPMI Dump" >> $LOG_DIR/fg_$file_nubmer.txt
dump_peripheral 0x0 0x400 "/sys/kernel/debug/fg_memif" >> $LOG_DIR/fg_$file_nubmer.txt
ispoweroffcharge=`getprop sys.poweroffcharge.control`
if [ -n "$ispoweroffcharge" ] && [ "$ispoweroffcharge" = "on" ]; then
    cache_freesize=`getprop sys.cache.size`
fi
while true
do
	utime=($(cat /proc/uptime))
	ktime=${utime[0]}
	echo "SRAM Dump Started at ${ktime}" >> $LOG_DIR/fg_$file_nubmer.txt
	dump_peripheral 0x400 0x200 "/sys/kernel/debug/fg_memif" >> $LOG_DIR/fg_$file_nubmer.txt
	utime=($(cat /proc/uptime))
	ktime=${utime[0]}
	echo "SRAM Dump done at ${ktime}" >> $LOG_DIR/fg_$file_nubmer.txt
	if [ -n "$ispoweroffcharge" ] && [ "$ispoweroffcharge" = "on" ]; then
		file_max_size=$((1024*5*1024))
		exit_min_size=$((1*5))
		if [ $cache_freesize -le $exit_min_size ]; then
		    echo "cache partition space less 5 MB !! exit fg dump!" >> $LOG_DIR/fg_$file_nubmer.txt
			break
		fi
		file_size=`stat -c%s $LOG_DIR/fg_$file_nubmer.txt` 
		if [ $file_size -gt $file_max_size ]; then
			let file_nubmer=$file_nubmer+1
			echo "file_nubmer $file_nubmer!" >> $LOG_DIR/fg_$file_nubmer.txt
			/system/bin/touch $LOG_DIR/fg_$file_nubmer.txt
		fi
		cache_size=`getprop sys.cache.size`
		if [ $cache_size -le $(($cache_freesize/10))  ]; then
			/system/bin/rm -rf $LOG_DIR/fg_$del_file_nubmer.txt
			echo "del_file_nubmer $del_file_nubmer!" >> $LOG_DIR/fg_$file_nubmer.txt
			let del_file_nubmer=$del_file_nubmer+1
		fi
	fi
    sleep $pause_time
	nblog_enable=`getprop persist.sys.nblog.enable`
	if [ "$nblog_enable" = "off" ]; then
		break
	fi
done
