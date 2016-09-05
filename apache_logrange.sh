#!/bin/bash

# ************************ #
# Extract Apache log rows
# for last 24 hours
# ************************ #

if [[ $EUID -ne 0 ]]; then
  echo "Do it as root" 1>&2
  exit 1
fi

set -ofu pipefail

NOW="$(date +"%b %d %T")"
YESTERDAY="$(date -d 'yesterday' +'%b %d %T')"

echo $NOW
echo $YESTERDAY

cat sed -n "/$YESTERDAY/ , /$NOW/p" /var/log/apache2/access*
# ./dummy.log
# /var/log/apache2/access*
