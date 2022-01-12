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
