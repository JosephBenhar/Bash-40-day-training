

#!/usr/bin/env BASH

server=1

until [ "$server" -gt 7 ]

do 

   echo Keep checking "$server"

   server=$((server+1))

done



