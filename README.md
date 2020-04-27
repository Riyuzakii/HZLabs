<p align="center"><a name="top" href="https://github.com/owl4ce/HZLabs"><img src="https://dotfiles.github.io/images/dotfiles-logo.png"></a></p>

> :flushed: Take it easy, the preview below has been compressed to a total of only ±1MB, HD Pict [here](https://ibb.co/album/LkLfYw)

Openbox - Cherry Blossom | I3wm - Night in Urban
|--|--|
![1](https://raw.githubusercontent.com/owl4ce/HZLabs/master/%40assets/preview-openbox-1.jpg) | ![2](https://raw.githubusercontent.com/owl4ce/HZLabs/master/%40assets/preview-i3wm-1.jpg)
![1](https://raw.githubusercontent.com/owl4ce/HZLabs/master/%40assets/preview-openbox-2.jpg) | ![2](https://raw.githubusercontent.com/owl4ce/HZLabs/master/%40assets/preview-i3wm-2.jpg)

SLiM | Rofi Menu
|--|--|
![SLiM](https://raw.githubusercontent.com/owl4ce/HZLabs/master/%40assets/preview-slim.jpg) | ![Rofi](https://raw.githubusercontent.com/owl4ce/HZLabs/master/%40assets/preview-rofi.gif)

- Icons Theme           : [Papirus](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme)
- Openbox Theme         : [MIxQ](https://github.com/owl4ce/MIxQ-Openbox)
- GTK Theme             : [Adapta](https://github.com/adapta-project/adapta-gtk-theme)
- QT Theme              : [GTK using _qt5ct_](https://wiki.archlinux.org/index.php/Qt#GTK_and_Qt)
- Fonts                 : [Comfortaa, iosevka, mplus, nerd (hurmit, mplus, roboto), material mix](https://github.com/owl4ce/HZLabs/tree/master/.fonts)
- Terminal Color Scheme : [Nord](https://github.com/arcticicestudio/nord-xresources)
- ZSH Theme             : [Zash](https://github.com/owl4ce/HZLabs/tree/master/.oh-my-zsh/themes)
- SLiM Theme            : [Shades-Pink](https://github.com/owl4ce/HZLabs/tree/master/Others/SLiM)

## Environment Details
| Items                | Values                                                                                               |
|----------------------|------------------------------------------------------------------------------------------------------|
| Display Server       | Xorg                                                                                                 |
| Display Manager      | [SLiM](https://wiki.archlinux.org/index.php/SLiM) (with .xinitrc for change window manager)          |
| Window Manager       | Openbox, i3-gaps (fork of i3 with more features)                                                     |
| Openbox Menu         | [obmenu-generator](https://github.com/trizen/obmenu-generator)                                       |
| Panel / Bar          | Polybar                                                                                              |
| Notification Daemon  | Dunst                                                                                                |
| Lock Screen          | Slimlock (from [SLiM](https://wiki.archlinux.org/index.php/SLiM))                                    |
| GTK Customizer       | LXAppearance                                                                                         |
| Policy Kit           | GNOME Polkit                                                                                         |
| Background Handler   | Nitrogen                                                                                             |
| Compositor           | picom                                                                                                |
| Power Manager        | xfce4-power-manager & TLP                                                                            |
| Screen Manager       | Openbox [pipe-menu](https://github.com/owl4ce/HZLabs/tree/master/.config/openbox/pipe-menu) > xrandr |
| Sessions Auto Locker | xss-lock                                                                                             |
| Brightness Handler   | brightnessctl                                                                                        |
| Sound Mixer          | PulseAudio                                                                                           |
| Sound Control        | Pavucontrol                                                                                          |
| CLI Sound Control    | [pamixer](https://github.com/cdemoulins/pamixer)                                                     |
| Network Manager      | [networkmanager_dmenu](https://github.com/firecat53/networkmanager-dmenu)                            |
| Clipboard Manager    | Clipit                                                                                               |
| Screenshot App       | scrot                                                                                                |
| System Optimizer     | Stacer & Bleachbit                                                                                   |
| Office Suite         | Libreoffice                                                                                          |
| Browser              | google-chrome-stable                                                                                 |
| Terminal             | URxvt                                                                                                |
| Terminal Shell       | [ZSH - OhMyZsh](https://github.com/ohmyzsh/ohmyzsh)                                                  |
| Text Editor          | Geany & Atom                                                                                         |
| CLI Text Editor      | nano & vim                                                                                           |
| Image Viewer         | Viewnior                                                                                             |
| File Manager         | Thunar                                                                                               |
| CLI File Manager     | ranger                                                                                               |
| Music Player         | Audacious                                                                                            |
| CLI Music Player     | MPD with MPC & NCMPCPP                                                                               |
| Video Player         | [Bomi Player](https://bomi-player.github.io/) & MPV                                                  |
| Document Viewer      | Okular                                                                                               |
| Graphic Editor       | GIMP                                                                                                 |
| Archiver             | GNOME File Roller                                                                                    |
| CLI System Monitor   | htop                                                                                                 |

## R.T.F.M - Read The Fine Manual
- Openbox keybindings can be seen in _~/.config/openbox/rc.xml_ or right-click on desktop
- I3wm keybindings can be seen in _~/.config/i3/config_
- Between each window manager, I've synchronize the some theme (ex:rofi,neofetch-image) using the `sed` command. To check, modify, or delete at startup each wm [openbox](https://github.com/owl4ce/HZLabs/blob/master/.config/openbox/autostart), [i3wm](https://github.com/owl4ce/HZLabs/blob/master/.config/i3/autostart)
- Because using a normal user, for brightnessctl requires user privileges to be a superuser without the sudo command but using [this](https://unix.stackexchange.com/questions/79692/running-program-as-root-without-using-sudo-with-normal-user-account) or [removes the password question](https://askubuntu.com/questions/246146/how-can-i-permanently-grant-root-access-to-a-user) from sudo
- The QT theme is synchronized with the GTK Theme. Read [this](https://wiki.archlinux.org/index.php/Qt#GTK_and_Qt) for guide
- Some Polybar modules may not work for example battery and my WiFi network interface is _wlan0_ you might have to change it if it's different in _~/.config/polybar/config_
- Rofi uses [rofi-menu](https://gitlab.com/vahnrr/rofi-menus) which I adjusted myself in [this](https://github.com/owl4ce/HZLabs/tree/master/.config/rofi)
- URxvt extension uses [clipboard, keyboard-select, url-select](https://github.com/muennich/urxvt-perls) and _xclip_ package for copy-paste (ALT-C / ALT-V) and [Tabbedex](https://github.com/mina86/urxvt-tabbedex) for tabs in the terminal (Ctrl + Shift + T / Ctrl + Shift + W / Ctrl + PageUp / Ctrl + PageDown)
- Thunar sidebar background is experimental using css in _~/.config/gtk-3.0/gtk.css_
- After installing the font you need to refresh the font cache using _fc-cache -r_
- In my screenshot there is a display to test colors using [Color Scripts](https://github.com/stark/Color-Scripts)
- To get the appropriate album art size for ncmpcpp, it is recommended that _cover.jpg_ has a ratio of 1:1 (300px+)
- I hope you understand about everything here. :wink:

## Thanks to
> Because they have shared their knowledge by explaining and sharing creative-inspirational desktop
- [addy-dclxvi](https://github.com/addy-dclxvi)
- [bandithijo](https://github.com/bandithijo)
- [fikriomar16](https://github.com/fikriomar16)
- [reorr](https://github.com/reorr)
- [adi1090x](https://github.com/adi1090x)
- Our local linux community [Linuxer Desktop Art](https://web.facebook.com/groups/linuxart) & [r/unixporn](https://www.reddit.com/r/unixporn/)
- Some people in the forum who provide solutions

## License
Licensed under the GPL - see the [LICENSE](LICENSE) file for details
