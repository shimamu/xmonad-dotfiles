#!/bin/sh

# Set up script for Linux.

ln -sf -T `pwd`/xmonad.hs ~/.xmonad/xmonad.hs
ln -sf -T `pwd`/.xmobarrc ~/.xmobarrc
xmonad --recompile
xmonad --restart

