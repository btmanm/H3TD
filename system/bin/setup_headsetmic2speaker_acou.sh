# setup acoustic loopback from headphone mic to speaker

am start -n com.longcheertel.audioft/.AudioLoopback --ei input 13 --ei output 2
echo "acoustic loopback from headphone mic to speaker"
