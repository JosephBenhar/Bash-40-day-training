
#!/usr/bin/env BASH

attempt=1

until [ "$attempt" -gt 5 ]

do
  
   echo "Retry $attempt"

   attempt=$((attempt+1 ))

done


