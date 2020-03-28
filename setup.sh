#!/bin/sh

# Set up script for Linux.

mkdir -p ~/.xmonad
ln -sf -T `pwd`/xmonad.hs ~/.xmonad/xmonad.hs
ln -sf -T `pwd`/.xmobarrc ~/.xmobarrc
xmonad --recompile

