#!/bin/bash

echo "===== Recent Administrator Commands ====="

sudo journalctl -b --no-pager | grep "COMMAND=" | tail -n 5 | sed 's/.*COMMAND=//'
