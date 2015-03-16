#!/bin/sh
# Part of raspi-config http://github.com/asb/raspi-config
#
# See LICENSE file for copyright and license details

# Should be installed to /etc/profile.d/raspi-config.sh to force raspi-config 
# to run at initial login

# You may also want to set automatic login in /etc/inittab on tty1 by adding a 
# line such as:
# 1:2345:respawn:/bin/login -f root tty1 </dev/tty1 >/dev/tty1 2>&1 # RPICFG_TO_DISABLE
# Tlumaczenie by matess1999

if [ $(id -u) -ne 0 ]; then
  printf "\nUwaga: oprogramowanie raspberry pi nie jest w pelni skofugurowane. Prosze uruchomic sudo raspi-config'\n\n"
else
  raspi-config
  exec login -f pi
fi
