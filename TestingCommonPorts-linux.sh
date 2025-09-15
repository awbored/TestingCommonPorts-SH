#!/bin/bash

# Cheat Sheet for Common Ports: https://www.stationx.net/common-ports-cheat-sheet/

declare -a Servers=("google.com" "cnn.com")

declare a Ports=(21 22 80 88 636 443 3289 3288)

for s in "${Servers[@]}"
do
  for p in "${Ports[@]}"
  do
    echo "Testing Server: $s, Port: $p"
    nc -w 1 -vz $s $p
  done
done
