#!/usr/bin/env bash

if [ -n "$1" ]
then
  url=`cat ~/Work/Org/Links.org | grep "$1" | cut -d \[ -f 3 | cut -d \] -f 1`
  xdg-open "$url"
  exit 0
fi

cat ~/Work/Org/Links.org | grep '\]\[' | cut -d \[ -f 4 | cut -d \] -f 1
