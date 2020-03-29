#!/usr/bin/env bash

if [ $# -gt 1 ]; then
  echo "expect 1 argument" 1>&2
  exit 1
fi

switch_number=1
if [ $# -eq 1 ]; then
  switch_number=$1
fi

current_workspace=$(wmctrl -d | grep '\*' | cut -d' ' -f1)

cmd="wmctrl -s"
to=$((current_workspace + switch_number))
if [ $to -lt 0 ]; then
  exit 0
fi
$cmd $to
