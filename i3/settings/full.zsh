# ---------------------- Part 1: Initial ---------------------- 
set $mod Mod4

set $refresh_i3status killall -SIGUSR1 i3status

# Font for window titles. Will also be used by the bar unless a different font
font pango:DejaVu Sans Mono 9
# font pango:monospace 8
# font xft:URWGothic-Book 10

bindsym $mod+c mode "configuration"

mode "configuration" {

	bindsym c exec cat \
		~/.dotfiles/i3/settings/startup.zsh \
		~/.dotfiles/i3/settings/applications.zsh \
		~/.dotfiles/i3/settings/borders.zsh \
		~/.dotfiles/i3/settings/media.zsh \
		~/.dotfiles/i3/settings/windows.zsh \
		~/.dotfiles/i3/settings/workspace_1.zsh \
		~/.dotfiles/i3/settings/workspace_2.zsh \
		~/.dotfiles/i3/settings/workspace_3.zsh \
		~/.dotfiles/i3/settings/workspace_4.zsh \
		~/.dotfiles/i3/settings/workspace_9.zsh \
		~/.dotfiles/i3/settings/workspace_10.zsh \
		~/.dotfiles/i3/settings/workspace_unused.zsh \
		~/.dotfiles/i3/settings/full.zsh \
		~/.dotfiles/i3/settings/notes.zsh \
		> ~/.dotfiles/i3/config \
		, reload
	
	bindsym d reload
	bindsym r restart
	bindsym e exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -B 'Yes, exit i3' 'i3-msg exit'"

	bindsym Escape mode "default"
}

bindsym $mod+t mode "ws_move"

mode "ws_move" {

	# move entire workspace
	bindsym h move workspace to left
	bindsym l move workspace to right

	bindsym k workspace next_on_output
	bindsym j workspace prev_on_output

	bindsym Escape mode "default"
}

# ---------------------- Part 6: ScratchPad ---------------------- 
# move the currently focused window to the scratchpad
bindsym $mod+Shift+minus move scratchpad

# Show the next scratchpad window or hide the focused scratchpad window.
# If there are multiple scratchpad windows, this command cycles through them.
bindsym $mod+minus scratchpad show


# ---------------------- Part 8: Resize ---------------------- 
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

bindsym $mod+r mode "resize"

# ---------------------- Part 9: Bar ---------------------- 
# Start i3bar to display a workspace bar (plus the system information i3status
# finds out, if available)
bar 
{
        # status_command i3status
		status_command exec ~/.config/i3status/shell/mybar.sh
		strip_workspace_numbers yes
}

# ---------------------- Part 10: KDE ---------------------- 
# $ xprop | grep -i "class"

# For finding role of class 
bindsym $mod+x exec konsole --hold -e xprop

for_window [window_role="pop-up"] floating enable
for_window [window_role="task_dialog"] floating enable

for_window [class="Pavucontrol"] floating enable, resize set 500px 500px, move position center, border normal
for_window [class="dolphin"] floating enable, resize set 900px 600px, move position center, border normal
for_window [class="plasma-discover"] floating enable, resize set 500px 500px, move position center, border normal
for_window [class="yakuake"] floating enable
for_window [class="systemsettings"] floating enable
for_window [class="plasmashell"] floating enable;
for_window [class="Plasma"] floating enable; border none
for_window [title="plasma-desktop"] floating enable; border none
for_window [title="win7"] floating enable; border none
for_window [class="krunner"] floating enable; border none
for_window [class="Kmix"] floating enable; border none
for_window [class="Klipper"] floating enable; border none
for_window [class="Plasmoidviewer"] floating enable; border none
for_window [class="(?i)*nextcloud*"] floating disable
for_window [class="plasmashell" window_type="notification"] border none, move right 600px, move up 400px
no_focus [class="plasmashell" window_type="notification"]


# Kill Existing window that covers everything
for_window [title="Desktop — Plasma"] kill; floating enable; border none

#############################
### settings for i3-gaps: ###
#############################

# Set inner/outer gaps
gaps inner 2
gaps outer 0

# Additionally, you can issue commands with the following syntax. This is useful to bind keys to changing the gap size.
# gaps inner|outer current|all set|plus|minus <px>
# gaps inner all set 10
# gaps outer all plus 5

# Smart gaps (gaps used if only more than one container on the workspace)
smart_gaps on

# Smart borders (draw borders around container only if it is not the only container on this workspace) 
# on|no_gaps (on=always activate and no_gaps=only activate if the gap size to the edge of the screen is 0)
smart_borders on

# Press $mod+Shift+g to enter the gap mode. Choose o or i for modifying outer/inner gaps. Press one of + / - (in-/decrement for current workspace) or 0 (remove gaps for current workspace). If you also press Shift with these keys, the change will be global for all workspaces.
set $mode_gaps Gaps: (o) outer, (i) inner
set $mode_gaps_outer Outer Gaps: +|-|0 (local), Shift + +|-|0 (global)
set $mode_gaps_inner Inner Gaps: +|-|0 (local), Shift + +|-|0 (global)
bindsym $mod+Shift+g mode "$mode_gaps"

mode "$mode_gaps" {
        bindsym o      mode "$mode_gaps_outer"
        bindsym i      mode "$mode_gaps_inner"
        bindsym Return mode "default"
        bindsym Escape mode "default"
}
mode "$mode_gaps_inner" {
        bindsym plus  gaps inner current plus 5
        bindsym minus gaps inner current minus 5
        bindsym 0     gaps inner current set 0

        bindsym Shift+plus  gaps inner all plus 5
        bindsym Shift+minus gaps inner all minus 5
        bindsym Shift+0     gaps inner all set 0

        bindsym Return mode "default"
        bindsym Escape mode "default"
}
mode "$mode_gaps_outer" {
        bindsym plus  gaps outer current plus 5
        bindsym minus gaps outer current minus 5
        bindsym 0     gaps outer current set 0

        bindsym Shift+plus  gaps outer all plus 5
        bindsym Shift+minus gaps outer all minus 5
        bindsym Shift+0     gaps outer all set 0

        bindsym Return mode "default"
        bindsym Escape mode "default"
}
