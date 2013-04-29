#!/bin/bash

current_weather() {
	WEATHER_FETCH_TIMEOUT="3600" 
	WEATHER_FILE=~/.bash_weather
	WEATHER_LAST_FETCH_TIME="0"
	
	if [ ! -e $WEATHER_FILE ];
		then
			touch $WEATHER_FILE
			
	fi
	
	WEATHER_LAST_FETCH_TIME=`stat -f '%m' $WEATHER_FILE`
	
	if (( `date +%s-cat`-WEATHER_LAST_FETCH_TIME>WEATHER_FETCH_TIMEOUT || `date +%s-cat`-WEATHER_LAST_FETCH_TIME==0 || `stat -f '%z' $WEATHER_FILE`<=1 ));
		then
			curl http://weather.killerfeature.com --connect-timeout 15 1> $WEATHER_FILE 2> /dev/null || echo "$" &
	fi
	
	cat $WEATHER_FILE
}



