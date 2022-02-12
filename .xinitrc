#xrdb -merge /root/.Xresources
/usr/bin/xrandr --dpi 90
/usr/bin/xrandr --output HDMI-0 --mode 1360x768
pipewire &
exec i3

