#!/bin/bash

: ${PASS:=$(dd if=/dev/urandom bs=1 count=15 2> /dev/null | base64 )}

x11vnc -storepasswd $PASS ~/.vnc/passwd 2> /dev/null
echo "VNC password is: ${PASS}"
x11vnc -forever -usepw -create > /dev/null 2>&1
