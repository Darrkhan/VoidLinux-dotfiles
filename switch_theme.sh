#!/bin/bash

# Show date & hour
date_formatted=$(date +'%Y-%m-%d %H:%M')

# Show battery capacity & status
bat_capacity=$(cat /sys/class/power_supply/BAT0/capacity)
bat_status=$(cat /sys/class/power_supply/BAT0/status)

if [[ ${bat_status} = 'Charging' ]]; then
    bat_info=' ↑'
elif [[ ${bat_status} = 'Discharging' ]]; then
    bat_info=' ↓'
elif [[ ${bat_status} = 'Unknown' ]]; then
    bat_info=' ?'
fi

# Volume & mute status
volume_info=$(wpctl get-volume @DEFAULT_SINK@)
volume_level=$(echo "$volume_info" | awk '{print $2}')
volume_pct=$(echo "$volume_level * 100 / 1" | bc)
is_muted=$(echo "$volume_info" | awk '{print $3}')

if [[ ${is_muted} == "[MUTED]" ]]; then
	volume_display="Muted"
else
	volume_display="${volume_pct}%"
fi

# Show if we are connected or not
network_info=$(ip route show default | grep -q 'default' && echo "󰖩" || echo "󱛅")
wifi_ssid=$(wpa_cli status | grep '^ssid=' | cut -d'=' -f2)
[ -n "$wifi_ssid" ] && network_info="Wifi: $wifi_ssid"

# Get current brightness
brightness=$(brightnessctl get)
max_brightness=$(brightnessctl max)
brightness_pct=$((brightness * 100 / max_brightness))

# Storage
#btrfs_storage=$(btrfs filesystem usage / | grep Free | awk '{print $3}' | head -n1)
#root_storage=$(df -h --output=pcent / | tail -n1 | sed 's/ //g')

# Scratchpad
scratchpad=$(swaymsg -t get_tree | jq -r '.nodes[] | select(.name == "__i3").nodes[] | select(.name == "__i3_scratch").floating_nodes | length')

# Echo command for swaybar
echo " [# ${scratchpad}] [NET ${network_info}] [VOL ${volume_display}] [BRI ${brightness_pct}%] [BAT ${bat_capacity}%${bat_info}] [${date_formatted}]"
