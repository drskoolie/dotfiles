# ---------------------- Workspaces Extra ---------------------- 
set $ws6 "6"
set $ws7 "7"
set $ws8 "8"

# switch to workspace
bindsym $mod+6 workspace number $ws6
bindsym $mod+7 workspace number $ws7
bindsym $mod+8 workspace number $ws8

# move focused container to workspace
bindsym $mod+Shift+6 move container to workspace number $ws6
bindsym $mod+Shift+7 move container to workspace number $ws7
bindsym $mod+Shift+8 move container to workspace number $ws8

