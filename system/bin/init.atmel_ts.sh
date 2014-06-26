#!/system/bin/sh

sleep 2

cd /sys/bus/i2c/devices/0-004a

chown root *
chmod 666 t19
chmod 666 update_cfg
chmod 666 update_fw

echo "1" > t19
sleep 1

#format: [family id]_[variant id]_[version]_[build].fw
#echo "82_2C_3.0_AA.fw" > update_fw

#format: [xxx].raw
echo "maxtouch.cfg" > update_cfg

sleep 1

chmod 440 t19
chmod 440 update_cfg
chmod 440 update_fw

echo "pl enable b" > plugin