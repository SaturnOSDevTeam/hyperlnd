#!/bin/bash
pacman -S --needed git base-devel git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

yay -S hyprland eww-wayland ttf-ubuntu-nerd socat jq acpi inotify-tools \
bluez pavucontrol brightnessctl playerctl nm-connection-editor imagemagick \
gjs gnome-bluetooth-3.0 upower networkmanager gtk3 \
wl-gammactl wlsunset wl-clipboard hyprpicker hyprshot blueberry \
polkit-gnome

git clone https://github.com/Aylur/dotfiles.git

cp -r dotfiles/.config/eww ~/.config/eww
cp -r dotfiles/.config/hypr ~/.config/hypr
mv ~/.config/hypr/_hyprland.conf ~/.config/hypr/hyprland.conf

sudo reboot --reboot -f
#This bash script reboots your system at the end of its installation, make sure to always close and save all applications beforehand, i am not responsible for any lost data.