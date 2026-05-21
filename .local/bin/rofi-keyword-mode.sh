#!/usr/bin/env bash

open_web () {
  firefox $1
  hyprctl dispatch focuswindow class:org.mozilla.firefox > /dev/null
}

if [ -n "$1" ]
then
  keyword=`echo $1 | cut -d " " -f 1`
  rest=`echo $1 | cut -d " " -f 2`
  case $keyword in 
    pf)
      open_web "https://pricefx.atlassian.net/browse/PFUN-$rest"
    ;;
    pm)
      open_web "https://pricefx.atlassian.net/browse/PM-$rest"
    ;;
  esac
  exit 0
fi
