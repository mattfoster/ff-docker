#!/bin/bash

: ${PASS:=$(dd if=/dev/urandom bs=1 count=15 2> /dev/null | base64 )}

x11vnc -storepasswd $PASS ~/.vnc/passwd 2> /dev/null
echo "VNC password is: ${PASS}"
echo "Connect to vnc://127.0.0.0:5900 (assuming you forward that port!)"
x11vnc -forever -usepw -create > /dev/null 2>&1
