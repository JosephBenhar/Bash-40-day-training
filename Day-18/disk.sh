

#!/usr/bin/env BASH


for disk in 40 90 70 95 30
 
do
    if [ "$disk" -ge 80 ]

    then
        echo "CPU $disk: High usage"
    else
        echo "CPU $disk: Normal"
    fi

done
