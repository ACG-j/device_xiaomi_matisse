mount -t debugfs none /sys/kernel/debug
sleep 10
nohup system/bin/gpu-freq > /dev/null 2>&1 &
