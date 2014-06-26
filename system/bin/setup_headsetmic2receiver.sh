# setup loopback from headphone mic to receiver

am start -n com.longcheertel.audioft/.AudioLoopback --ei input 3 --ei output 1
echo "loopback from headphone mic to receiver"
