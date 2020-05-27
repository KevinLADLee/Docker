#!/bin/bash
if [ -d "/SUSTechPOINTS/data/example" ];then
echo "Example data exist"
else
echo "Example data not exist" 
mv /SUSTechPOINTS/example /SUSTechPOINTS/data
fi

python3 main.py
