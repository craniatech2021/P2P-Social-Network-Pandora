#!/bin/sh

# The script for running Pangate (Pandora gate) on external host at internet


DIRFILE=`readlink -e "$0"`
CURFILE=`basename "$DIRFILE"`
CURDIR=`dirname "$DIRFILE"`

cd "$CURDIR"

screen -x "pangate"
if [ "$?" != "0" ]; then
  screen -S "pangate" `which python` ./pangate.py
fi

