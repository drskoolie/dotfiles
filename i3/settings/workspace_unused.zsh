# ---------------------- Workspaces Extra ---------------------- 
set $ws6 "6"
set $ws7 "7"

# switch to workspace
bindsym $mod+6 workspace number $ws6
bindsym $mod+7 workspace number $ws7

# move focused container to workspace
bindsym $mod+Shift+6 move container to workspace number $ws6
bindsym $mod+Shift+7 move container to workspace number $ws7

