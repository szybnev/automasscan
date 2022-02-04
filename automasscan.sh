#!/bin/bash

# Autor: Zybnev Sergey https://github.com/szybnev

echo "Autor: Zybnev Sergey https://github.com/szybnev"
echo "Thank you for using my script!"
echo
echo It\'s script that autoscan your network by using masscan.
echo
echo Enter ip/ip ranges. Example 192.168.0.1 or 192.168.0.1/24
read -e -p "Enter network: " NETWORK
echo
echo "Enter port. Example 80 or 3389"
read -e -p "Enter port: " PORT
echo
echo "Choose format for output: xml, binary, grepable, list, JSON:"
read -e -p "Enter format: " FORMAT
echo
echo Results will save to file scan-port$PORT.txt

sudo masscan $NETWORK  -p$PORT --output-format $FORMAT --output-filename scan-$PORT.txt


