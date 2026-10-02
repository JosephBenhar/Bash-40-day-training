
#!/usr/bin/env BASH

login_check () {

echo "Enter Failed Login attempts:"

read login

 if [ "$login"  -le  5 ]
 then
       echo "Login activity normal"
 elif [ "$login"  -le  10 ]
  then
       echo "Suspicious login activity"

else 
        echo "CRITICAL login activity"
fi

}

login_check
