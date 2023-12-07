#!/bin/bash -e
BUS_ID=`usbip list -r localhost | cut  -s '-d:' -f1 | cut -s '-d-' -f1,2 | cut '-d ' -f9`
[[ -z "$BUS_ID" ]] || /usr/bin/usbip attach --remote=localhost --busid=$BUS_ID
sleep 3s
[[ -z "$BUS_ID" ]] || /usr/bin/usbip port
sleep 3s
[[ -z "$BUS_ID" ]] || /usr/bin/usbip detach --port=0
