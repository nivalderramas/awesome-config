#!/bin/sh

start() {
  if ! pgrep -f $1 ;
  then 
    $@&
  fi
}

$HOME/.screenlayout/vertical.sh

#start picom -b --dbus --config $HOME/.config/picom/picom.conf
start picom --experimental-backends -b --dbus --config $HOME/.config/picom/picom.conf

