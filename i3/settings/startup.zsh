#  __^__         __^__
# ( ___ )-------( ___ )
#  | / |         | \ |
#  | / | Startup | \ |
#  |___|         |___|
# (_____)-------(_____)

set $mod Mod4
set $refresh_i3status killall -SIGUSR1 i3status

font pango:DejaVu Sans Mono 9

# xss-lock grabs a logind suspend inhibit lock and will use i3lock to lock the
# screen before suspend. Use loginctl lock-session to lock your screen.
exec --no-startup-id xss-lock --transfer-sleep-lock -- i3lock --nofork

# NetworkManager is the most popular way to manage wireless networks on Linux,
# and nm-applet is a desktop environment-independent system tray GUI for it.
exec --no-startup-id nm-applet
