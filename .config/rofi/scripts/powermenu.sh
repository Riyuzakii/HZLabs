#!/bin/bash

rofi_command="rofi -theme themes/powermenu.rasi"

### Options ###
power_off=""
reboot=""
lock=""
suspend="鈴"
log_out=""
# Variable passed to rofi
options="$power_off\n$reboot\n$lock\n$suspend\n$log_out"

chosen="$(echo -e "$options" | $rofi_command -dmenu -selected-row 2)"
case $chosen in
    $power_off)
        ~/.config/rofi/scripts/promptmenu.sh --yes-command "poweroff" --query "Are you sure want to Poweroff?"
        ;;
    $reboot)
        ~/.config/rofi/scripts/promptmenu.sh --yes-command "reboot" --query "Are you sure want to Reboot?"
        ;;
    $lock)
        slimlock
        ;;
    $suspend)
        mpc -q pause
        systemctl suspend
        ;;
    $log_out)
        ~/.config/rofi/scripts/promptmenu.sh --yes-command "openbox --exit | i3-msg exit" --query "Logout?"
        ;;
esac

