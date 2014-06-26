#!/system/bin/sh
  echo 1 > /sys/module/sec/parameters/recovery_done		#tony
if ! applypatch -c EMMC:recovery:6105088:1edbbb7776cd978b264e7ea63b95179ff35706b1; then
  log -t recovery "Installing new recovery image"
  applypatch -b /system/etc/recovery-resource.dat EMMC:boot:5769216:5643abbc0f7a0d6f4852d711b5c78ba17cee3faa EMMC:recovery 1edbbb7776cd978b264e7ea63b95179ff35706b1 6105088 5643abbc0f7a0d6f4852d711b5c78ba17cee3faa:/system/recovery-from-boot.p
  if applypatch -c EMMC:recovery:6105088:1edbbb7776cd978b264e7ea63b95179ff35706b1; then		#tony
	echo 0 > /sys/module/sec/parameters/recovery_done		#tony
        log -t recovery "Install new recovery image completed"
  else
	echo 2 > /sys/module/sec/parameters/recovery_done		#tony
        log -t recovery "Install new recovery image not completed"
  fi
else
  echo 0 > /sys/module/sec/parameters/recovery_done              #tony
  log -t recovery "Recovery image already installed"
fi
