# ---------------------- Media ----------------------

bindsym $mod+m mode "media"

mode "media" {

	bindsym k exec --no-startup-id pactl set-sink-volume @DEFAULT_SINK@ +3% && $refresh_i3status
	bindsym j exec --no-startup-id pactl set-sink-volume @DEFAULT_SINK@ -3% && $refresh_i3status
	bindsym m exec --no-startup-id pactl set-sink-mute @DEFAULT_SINK@ toggle && $refresh_i2status
	bindsym r exec --no-startup-id pactl set-source-mute @DEFAULT_SOURCE@ toggle && $refresh_i3status

	bindsym t exec --no-startup-id playerctl -p audacious play-pause
	bindsym s exec --no-startup-id playerctl -p audacious stop

	bindsym p exec --no-startup-id playerctl -p audacious previous
	bindsym n exec --no-startup-id playerctl -p audacious next

	bindsym h exec --no-startup-id playerctl -p audacious position 5-
	bindsym l exec --no-startup-id playerctl -p audacious position 5+

	bindsym 0 exec --no-startup-id playerctl -p audacious position 0
	bindsym 9 exec --no-startup-id playerctl -p audacious position 100+
	bindsym Shift+H exec --no-startup-id playerctl -p audacious position 20-
	bindsym Shift+L exec --no-startup-id playerctl -p audacious position 20+

	# Shortcuts include Ctrl+Pg_Up and Ctrl+Pg_Down for tabs
	bindsym Shift+p exec pavucontrol; mode "default"

	bindsym Escape mode "default"

}
	
