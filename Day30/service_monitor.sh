#!/bin/bash

SERVICE="ssh"

systemctl is-active --quiet "$SERVICE"

if [ $? -eq 0 ]; then

	echo "SSH service is RUNNING"
else
        echo "SSH service is STOPPED"
fi

