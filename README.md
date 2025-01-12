# My Dotfiles 🖥️

Welcome to my dotfiles repository! This is where I store and manage the configuration files for my Linux system. 

## Overview

- **Distro**: Void Linux (musl)
- **Window Manager**: Sway (Wayland)
- **Shell**: bash + starship
- **Editor**: Neovim with essential plugins
- **Terminal**: alacritty
- **Themes**: Customs light and dark themes for Sway and other apps
- **Additional Tools**:
  - Firefox
  - Neovim
  - Nnn
  - Wmenu
  - Swaylock
  - Wlogout
  - Tmux

## Features

### Sway Setup
- Modular configuration stored in `~/.config/sway/sway_config.d`.
- Organized files for:
  - Autostart programs
  - Input and monitor settings
  - Keybindings and custom rules

### Themes
Themes are managed by a cron task using `switch_theme.sh`
- **Light Theme**:
  - Background: `#f2e9de`
  - Foreground: `#575268`
  - Accent: `#9c6644`
  - Urgent: `#c34043`
  - Inactive: `#d3cec4`
- **Dark Theme**:
  - Background: `#1e1e2e`
  - Foreground: `#cdd6f4`
  - Accent: `#89b4fa`
  - Urgent: `#f38ba8`
  - Inactive: `#313244`
- Configured Swaybar using `swaybar.sh`.

## Screenshots
![Dark theme](https://github.com/Darrkhan/VoidLinux-dotfiles/blob/Sway/dark_theme.png?raw=true)
![Light theme](https://github.com/Darrkhan/VoidLinux-dotfiles/blob/Sway/light_theme.png?raw=true)
