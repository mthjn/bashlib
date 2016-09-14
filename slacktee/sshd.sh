#!/bin/bash
# excluding the new relic monitoring collector
sudo lsof -i | grep "sshd" | grep "ESTABLISHED" | grep -v "50.31.164" | /usr/local/bin/slacktee.sh
