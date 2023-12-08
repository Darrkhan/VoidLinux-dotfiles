#!/usr/bin/env bash


dir="$HOME/.config/rofi/launchers/themes"
theme='fail'

## Run
rofi \
    -show drun \
    -theme ${dir}/${theme}.rasi

