#!/bin/bash

if [[ $EUID -ne 0 ]]; then
  echo "Do it as root" 1>&2
  exit 1
fi

set -ofu pipefail

netstat -taupen | slacktee.sh
