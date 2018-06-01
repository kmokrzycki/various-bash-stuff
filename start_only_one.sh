#!/bin/bash
COMMAND="/usr/local/bin/tvheadend"
IS_RUNNING=`pgrep -f -x "${COMMAND}" | wc -l`

DATE=`date +"%x %T"`

if (( $IS_RUNNING > 0)); then
    echo "$DATE - Running. Nothing to do !"
else
    echo "$DATE - Not Running"
    nohup $COMMAND &
    echo "$DATE - Started"
fi
exit;
