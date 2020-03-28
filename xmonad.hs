import XMonad
import XMonad.Hooks.DynamicLog

import XMonad.Util.EZConfig(additionalKeysP)

main :: IO()
main = do
    xmobar myConfig >>= xmonad

myConfig = defaultConfig
    { terminal = myTerminal
    , startupHook = myStartupHook
    , normalBorderColor = "#272822"
    , focusedBorderColor = "#f92672"
    -- ,  modMask = mod4Mask
    } `additionalKeysP`
    [
      ("M-w", spawn "firefox")
    ]

myTerminal = "urxvt"

myWrkspace = ["1", "2", "3", "4"]

myStartupHook = do
    spawn "feh --bg-scale ~/.xmonad/wallpaper-window.jpg"
    spawn "ibus-daemon -r -d -x"
    spawn "compton -b"
