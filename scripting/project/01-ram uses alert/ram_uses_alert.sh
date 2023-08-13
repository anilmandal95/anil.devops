#!/bin/bash

RAM_FREE_SPACE=$(free -mt | grep "Total" | awk '{print $4}')
THARASOLD=70

if [[ $RAM_FREE_SPACE -ge $THARASOLD ]]
then
        echo "Warning! Ram Space crossed thrasold limit. "
else
        echo "Avaliable Ram is $RAM_FREE_SPACE . That is good"

fi
