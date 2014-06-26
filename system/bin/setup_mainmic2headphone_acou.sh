# setup acoustic loopback from main mic to headphone

am start -n com.longcheertel.audioft/.AudioLoopback --ei input 11 --ei output 3
echo "acoustic loopback from main mic to headphone"
