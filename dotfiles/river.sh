#!/bin/sh

# DOTFILE: $XDG_CONFIG_HOME/river/init
# >>>>>>>> #!/bin/bash
# >>>>>>>> source <repo>/dotfiles/river.sh

riverctl map normal Mod4+Shift Q spawn "xterm -fg green -bg black"
riverctl map normal Mod4 Q spawn "$WEZTERM_INSTALL"
riverctl map normal Mod4 W spawn firefox

riverctl map normal Mod4 U close
riverctl map normal Mod4 H focus-view previous
riverctl map normal Mod4 L focus-view next
riverctl map normal Mod4 B zoom

riverctl declare-mode layout-ctrl
riverctl map normal Mod4 Y enter-mode layout-ctrl
riverctl map layout-ctrl Mod4 Y enter-mode normal

riverctl map layout-ctrl None H send-layout-cmd rivertile "main-ratio -0.05"
riverctl map layout-ctrl None J send-layout-cmd rivertile "main-count -1"
riverctl map layout-ctrl None K send-layout-cmd rivertile "main-count +1"
riverctl map layout-ctrl None L send-layout-cmd rivertile "main-ratio +0.05"

riverctl map layout-ctrl None Up send-layout-cmd rivertile "main-location top"
riverctl map layout-ctrl None Down send-layout-cmd rivertile "main-location bottom"
riverctl map layout-ctrl None Left send-layout-cmd rivertile "main-location left"
riverctl map layout-ctrl None Right send-layout-cmd rivertile "main-location right"

riverctl declare-mode passthrough
riverctl map normal Super A enter-mode passthrough
riverctl map passthrough Super A enter-mode normal

riverctl map normal Mod4+Shift V exit

riverctl background-color 0x252525
riverctl border-color-focused 0xDC7633
riverctl border-color-unfocused 0x252525

riverctl set-repeat 50 300

riverctl default-layout rivertile
rivertile -view-padding 6 -outer-padding 6

