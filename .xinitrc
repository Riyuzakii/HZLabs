# Set Default DPI to 96 & Mouse Input Acceleration
xrandr --dpi 96
bash -c 'xset m 70/10 1 r rate 500 30 b on'

# Load Xresources
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# Use QT5CT Settings for QT Themes
export QT_QPA_PLATFORMTHEME=qt5ct

# SLiM Select Sessions login command
exec $1
