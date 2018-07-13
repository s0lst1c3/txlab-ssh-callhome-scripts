#!/bin/sh

SSHCMD="ssh -Tq -o ServerAliveInterval=5 \
    -o UserKnownHostsFile=/dev/null \
    -o StrictHostKeyChecking=no \
    comehome@SERVERHERE"

while true; do
    PORT=`$SSHCMD`
    if test 0${PORT} -gt 0; then
      $SSHCMD -NC -R "*:${PORT}:127.0.0.1:22"
    fi
  sleep 5
done
