#!/bin/bash

# Update package database
sudo pacman -Syu

# Install basic utilities and terminal
sudo pacman -S --noconfirm nano alacritty rofi mousepad

# Install file manager and file utilities
sudo pacman -S --noconfirm thunar thunar-volman tumbler ffmpegthumbnailer thunar-archive-plugin xarchiver
sudo pacman -S --noconfirm p7zip unrar zip unzip gvfs udisks2

# Install Hyprland and login manager
sudo pacman -S --noconfirm hyprland sddm
sudo systemctl enable sddm
sudo systemctl start sddm

# Install status bar and notification daemon
sudo pacman -S --noconfirm waybar dunst

# Install theming tools
sudo pacman -S --noconfirm qt5ct qt6ct kvantum

# Install wallpaper, sunset and appearance tools
sudo pacman -S --noconfirm hyprpaper hyprsunset

# Install Bluetooth and networking tools
sudo pacman -S --noconfirm bluez bluez-utils blueman
sudo pacman -S --noconfirm networkmanager network-manager-applet nm-connection-editor
sudo systemctl enable NetworkManager
sudo systemctl start NetworkManager

# Install XDG portals
sudo pacman -S --noconfirm xdg-desktop-portal xdg-desktop-portal-hyprland xdg-desktop-portal-gtk

# Install multimedia and fonts
sudo pacman -S --noconfirm mpv
sudo pacman -S --noconfirm cantarell-fonts ttf-liberation noto-fonts noto-fonts-cjk noto-fonts-emoji ttf-sourcecodepro

# Install brightness control
sudo pacman -S --noconfirm brightnessctl

# Install git and yay (AUR helper)
sudo pacman -S --noconfirm git
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd ..
rm -rf yay

echo "Setup complete! You may want to reboot now."
