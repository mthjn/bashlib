#!/bin/bash

netstat -tauen | grep "TIME_WAIT" | grep -v "50.31.164" | /usr/local/bin/slacktee.sh
