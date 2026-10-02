
#!/usr/bin/env BASH

Security_event() {

   echo "Source IP: $1"
   echo "Failed Logins: $2"
   echo "Username: $3"

if [ "$2" -le 5 ]
 then
      echo "Status: NORMAL"

elif [ "$2" -le 10 ]
 then 
      echo "Status: SUSPICIOUS"
else
      echo "Status: CRITICAL"

fi

}

Security_event 192.168.1.20 3 joseph
Security_event 172.16.0.50 8 admin
Security_event 185.20.10.5 20 root


