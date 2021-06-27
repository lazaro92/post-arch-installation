#!/bin/sh

result=$(ps -A | grep wpa)

if [ -z "${result}" ]; then
    echo "No wpa process found."
    exit -1
else
    pid="$(echo -e $result | cut -d ' ' -f1)"
    if  kill -kill "$pid"; then
        echo "Wifi disconnected."
    else
        echo "A problem apeared when trying to kill wifi process $pid"
    fi
fi
exit 0
