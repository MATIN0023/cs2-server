#!/bin/bash

GAMEROOT=$(cd "${0%/*}" && pwd)

export LD_LIBRARY_PATH="$GAMEROOT/bin/linuxsteamrt64:$LD_LIBRARY_PATH"

ulimit -n 65535

cd "$GAMEROOT"

./bin/linuxsteamrt64/cs2 "$@"
