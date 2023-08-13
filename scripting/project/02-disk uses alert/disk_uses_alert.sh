#!/bin/bash

FREE_SPACES=$(df -H | egrep -v "Filesystem|tmpfs" | grep "/dev/root" | awk '{print $5}' | tr -d %)
THRASOLD=70
if [[ $FREE_SPACES -ge $THRASOLD ]]
then
        echo "Warning! free spaces are very low"
else
        echo "Free spaces in disk is $FREE_SPACES"
fi
