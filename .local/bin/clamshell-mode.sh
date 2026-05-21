#!/usr/bin/env zsh

if [[ "$(hyprctl monitors)" =~ "\sDP-+" ]]; then
  if [[ $1 == "open" ]]; then
    hyprctl reload
  else
    hyprctl keyword monitor "eDP-1, disable"
  fi
fi
