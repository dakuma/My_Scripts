#!/bin/bash
# NIDO script

newFileName=$(date "+Agenda_%d_%m_%Y.md"); # sets the filename var

echo "<p>&nbsp;</p>" >> $newFileName;
echo >> $newFileName;
echo "# Agenda: $(date '+%d_%m_%Y') 👍" >> $newFileName;
echo "<p>&nbsp;</p>" >> $newFileName;
echo >> $newFileName;
echo "## ***Hello Everyone!***" >> $newFileName;
echo "<p>&nbsp;</p>" >> $newFileName;

# Replace this with your OpenWeatherMap API key
# API_KEY="c829db3c76b04e012df30b5d5e21f9ae"
# this is Eunji's API key do not use it please
API_KEY="06da25f925f8e34726ddf50b089f58d2"

# City and country code
CITY="London,CA"
UNIT="metric" # Use "imperial" for Fahrenheit, "metric" for Celsius

# API URL
API_URL="http://api.openweathermap.org/data/2.5/weather?q=$CITY&appid=$API_KEY&units=$UNIT"

# Fetch weather data
weather_data=$(curl -s "$API_URL")

# Extract weather information using 'jq' (install it using 'sudo apt install jq' if you don't have it)
temperature=$(echo "$weather_data" | jq '.main.temp')
weather=$(echo "$weather_data" | jq '.weather[0].main')
description=$(echo "$weather_data" | jq '.weather[0].description')

# Print weather information
echo "Weather in London, Ontario, Canada:" >> $newFileName;
echo "Temperature: $temperature°C" >> $newFileName;
echo "Weather: $weather" >> $newFileName;
echo "Description: $description" >> $newFileName;


# adds a Quote of the Day! Hurray hurray!
curl 'https://quotes.rest/qod?language=en' | jq '.contents.quotes[0].quote' >> $newFileName;
echo "<p>&nbsp;</p>" >> $newFileName;
curl 'https://quotes.rest/qod?language=en' | jq '.contents.quotes[0].author' >> $newFileName;
echo "<p>&nbsp;</p>" >> $newFileName;

echo >> $newFileName;
echo "## **Today** 📆" >> $newFileName;
echo >> $newFileName;

echo "1. Item 1" >> $newFileName;
echo "2. Item 2" >> $newFileName;
echo "3. Item 3" >> $newFileName;
echo "4. Item 4" >> $newFileName;
echo "5. Item 5" >> $newFileName;
echo "<p>&nbsp;</p>" >> $newFileName;
echo "<p>&nbsp;</p>" >> $newFileName;
echo >> $newFileName;

echo "# ☕ BREAK 0:00am - 0:00am 🍩" >> $newFileName;
echo "<p>&nbsp;</p>" >> $newFileName;
echo "<p>&nbsp;</p>" >> $newFileName;
echo >> $newFileName;

echo "## **Wrapping-up** 🎁" >> $newFileName;
echo >> $newFileName;
echo "- What did we do today?" >> $newFileName;
echo "- What was new?" >> $newFileName;
echo "- What was clear?" >> $newFileName;
echo "- What is unclear?" >> $newFileName;
echo "<p>&nbsp;</p>" >> $newFileName;
echo >> $newFileName;

echo "## **Tomorrow** ⌛" >> $newFileName;
echo >> $newFileName;
echo "- We are going to?" >> $newFileName;
echo "- Please review todays code." >> $newFileName;
echo "<p>&nbsp;</p>" >> $newFileName;
echo >> $newFileName;

echo "## ***May the **code** be with you.*** 🤖" >> $newFileName;
echo "<p>&nbsp;</p>" >> $newFileName;
echo "<p>&nbsp;</p>" >> $newFileName;
echo >> $newFileName;

code $newFileName

if [ $# -eq 1 ]
then
code ~/NIDO/markdown_syntax_help.txt
fi