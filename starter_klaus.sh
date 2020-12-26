#!/bin/sh

read -p "Wo willst Du flegen? z.B. EDDH: " Airport

if [ -z "$Airport" ]; then
	Airport="EDDH"
fi

read -p "Womit willst Du fliegen? 777-200ER, oder A320Neo oder oder: " Airplane

if [ -z "$Airplane" ]; then
	Airplane="A330-200F-PW"
fi

options="--aircraft=$Airplane \
--airport=$Airport \
--disable-auto-coordination \
--prop:/sim/multiplay/txhost=mpserver21.flightgear.org \
--prop:/sim/multiplay/txport=5000 \
--callsign=AVX931 \
--enable-terrasync \
--disable-fullscreen \
--disable-rembrandt \
--prop:/sim/rendering/shaders/skydome=true \
--httpd=5500 \
--generic=socket,out,2,localhost,5555,udp,blackbox \
--prop:/instrumentation/efis/inputs/kpa-mode=true \
--season=winter \
--enable-real-weather-fetch  \
--nav1=229:111.50  \
--nav2=68:115.1  \
--com1=123.12  \
--adf1=350  \
--dme=nav1" 



# echo $options


/Applications/FlightGear.app/Contents/MacOS/fgfs $options --config=/Users/manne2/Library/Application\ Support/FlightGear/Nasal/keyboard_manne.xml --fg-aircraft=/Users/manne2/Library/Application\ Support/FlightGear/Aircraft
