#!/bin/bash
hyprctl keyword windowrule "workspace 1 silent,^(kitty)$"
# hyprctl keyword windowrule "workspace 2 silent,^(brave)"
# hyprctl keyword windowrule "workspace 2 silent,^(thorium-browser)" # not working for some reason
# hyprctl keyword windowrule "workspace 4,silent, ^(xournalpp)$"
# sleep 1

hyprctl dispatch -- exec kitty mux
hyprctl dispatch workspace 2
# hyprctl dispatch -- exec thorium-browser --enable-features=UseOzonePlatform --ozone-platform=wayland
# hyprctl dispatch -- exec google-chrome-stable -force-dark-mode --enable-features=UseOzonePlatform --ozone-platform=wayland
hyprctl dispatch -- exec vivaldi -force-dark-mode --enable-features=UseOzonePlatform --ozone-platform=wayland
# hyprctl dispatch exec xournalpp

# sleep 0.5
# hyprctl dispatch workspace 1
sleep 1
hyprctl keyword windowrule "workspace unset,kitty"
# hyprctl keyword windowrule "workspace unset,google-chrome-stable"

# hyprctl dispatch -- exec kitty ncmpcpp
