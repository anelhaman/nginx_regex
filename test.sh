#!/bin/sh

while IFS='' read -r path || [[ -n "$path" ]]; 
do
    echo "http://localhost:8000$path" ; 
    curl -I "http://localhost:8000$path" ; 
    sleep 3;
done < "$1"
