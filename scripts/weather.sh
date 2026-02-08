#!/bin/bash

while true; do
    Fetch current weather from wttr.in in a simple icon + temp format
    Example output: ☀️ +22°C
    curl -s "wttr.in/?format=%C+%t" > /tmp/awesome_weather.txt || echo "Fetching weather data..." > /tmp/awesome_weather.txt
    sleep 900 # Update every 15 minutes
done