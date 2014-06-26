# setup acoustic loopback from headset mic to headphone

am start -n com.longcheertel.audioft/.AudioLoopback --ei input 13 --ei output 3
echo "acoustic loopback from headset mic to headphone"
