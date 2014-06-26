# setup acoustic loopback from headphone mic to receiver

am start -n com.longcheertel.audioft/.AudioLoopback --ei input 13 --ei output 1
echo "acoustic loopback from headphone mic to receiver"
