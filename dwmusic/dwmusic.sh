#!/bin/bash

THEME_DIR=~/.config/dwm/themes
WALLPAPER_DIR=~/.config/dwm/wallpapers
DWM_DIR=~/.config/dwm

fmt_help="  %-20s\t%-54s\n"

_help() {
    echo "Description: Change dwm themes\n"
    echo "Usage: dwm-themes [FLAG] [OPTION]"
    printf "${fmt_help}" \
        "-h, --help" "Print this help." \
        "-t, --theme [name]" "Set the theme." \
        "-l --list" "List all themes availables."
}


_list(){
	for t in "$THEME_DIR"/*
	do
		name=$(basename "$t" .h)
		echo "$name"
	done
}


_theme_exists() {
	local theme="$1"
    [[ -f "$THEME_DIR/$theme.h" ]]
}

_theme() {
    if ! _theme_exists "$1"; then
        echo "Theme not found."
    else
        sed -i "s|themes/[^\"]*|themes/$1.h|" "$WALLPAPER_DIR"/config.h
        _wallpaper "$1"
        cd "$WALLPAPER_DIR" && sudo make clean install
        _reload
    fi
}


_reload() {
    read -p "Reload session now [Yes/No]? " answer
    case "${answer,,}" in
        y|yes)
            echo "Reloading session..."
			killall -HUP dwm
            ;;
        *)
            echo "Session not reloaded."
            ;;
    esac
}

_wallpaper() {
    local theme="$1"
    sed -i "s|wallpapers/[^\"]*|wallpapers/$theme.jpg|" "$WALLPAPER_DIR"/autostart.sh
}

case "$#" in
	0)
		_help
		;;
	1)
		case "$1" in
			-h | --help | help)
				_help
				;;
			-l | --list | list)
				_list
				;;
			*)
				echo "input error. flag not found"
				;;

		esac
		;;
	2)
		if [[ "$1" == "-t" || "$1" == "-theme" ]]; then
			_theme "$2"
		fi
		;;
	*) 
		echo "Theme not found"
		exit 1
		;;

esac
