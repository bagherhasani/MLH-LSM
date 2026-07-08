#!/bin/bash
# we use curl command to get content from internet, it does not save unless we do it.
# curl link
# | this one called pipe it says take the output from the left and give it to the right 
# jq is for reading the json file and formatting it 

#echo '{"symbol":"BTC","price":65000}' | jq -r ".symbol"
#curl https://api.coinpaprika.com/v1/tickers |jq -r ".[].quotes.USD.volume_24h" |awk '{print $1}'| sort -nr | head -10


# get content then json format of volume symbol and price then sort based on the volument then pick 10 - then print the symbol and price
curl https://api.coinpaprika.com/v1/tickers | jq -r '.[] | "\(.quotes.USD.volume_24h) \(.symbol) \(.quotes.USD.price)"'| sort -nr | head -10 | awk '{print $2,$3}'
