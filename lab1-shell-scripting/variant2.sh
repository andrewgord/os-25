#!/bin/bash

DIR="$1"
EXT="${2#.}"

find "$DIR" -type f -name "*.$EXT" -printf '%h\n' \
  | sed "s|^$DIR/||" \
  | sort -u -r

