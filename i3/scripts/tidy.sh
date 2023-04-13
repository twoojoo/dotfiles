## tydy workspaces by moving certain window classess
## in specific workspaces and anything else in the last one

i3-msg '[class=.*] move container to workspace 7' &> /dev/null
i3-msg '[class=Chromium] move container to workspace 1' &> /dev/null  
i3-msg '[class=Subl] move container to workspace 2' &> /dev/null
i3-msg '[class=beekeeper-studio] move container to workspace 3' &> /dev/null
i3-msg '[class=Insomnia] move container to workspace 4' &> /dev/null
i3-msg '[class=Lens] move container to workspace 5' &> /dev/null 
i3-msg '[class=Terminator] move container to workspace 6' &> /dev/null