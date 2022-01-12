# ---------------------- Part 8: Resize ---------------------- 
bindsym $mod+r mode "resize"

# resize window (you can also use the mouse for that)
mode "resize" {
        # These bindings trigger as soon as you enter the resize mode

        bindsym h resize shrink width 5 px or 5 ppt
        bindsym Shift+h resize shrink width 10 px or 10 ppt
        bindsym j resize grow height 5 px or 5 ppt
        bindsym Shift+j resize grow height 10 px or 10 ppt
        bindsym k resize shrink height 5 px or 5 ppt
        bindsym Shift+k resize shrink height 10 px or 10 ppt
        bindsym l resize grow width 5 px or 5 ppt
        bindsym Shift+l resize grow width 10 px or 10 ppt

        # back to normal: Enter or Escape or $mod+r
        bindsym Return mode "default"
        bindsym Escape mode "default"
}

