# Dwmusic

### Megadeth-Dystopia theme
![Dwm](https://github.com/CrisitoJ/dwmusic/blob/main/examples/dystopia.png)
### Judas Priest-The sentinel theme
![Dwm](https://github.com/CrisitoJ/dwmusic/blob/main/examples/sentinel.png)
### Avenged Sevenfold-The Stage theme
![Dwm](https://github.com/CrisitoJ/dwmusic/blob/main/examples/stage.png)


## How install and use the themes.
This repository assumes you have dwm on ~/.config. In case not, you should modify the 3 variables on the script. Else, just follow the instructions

#### Make the package
```bash
cd dwmusic
makepkg -cf
```
#### Install  it
```bash
sudo pacman -U *.pkg.tar.zst
```
#### Try it
```bash
dwmusic -h # Help
dwmusic -l # List of themes
dwm -t [THEME-NAME] # Select theme. try dwm -t dystopia
```


## Patches:
- [autostart](https://dwm.suckless.org/patches/autostart/dwm-autostart-20200610-cb3f58a.diff)
- [actualfullscreen](https://dwm.suckless.org/patches/actualfullscreen/dwm-actualfullscreen-20211013-cb3f58a.diff)
- [focusadjacenttag](https://dwm.suckless.org/patches/focusadjacenttag/dwm-focusadjacenttag-6.3.diff)
- [fullgaps](https://dwm.suckless.org/patches/fullgaps/dwm-fullgaps-6.4.diff)
- [resetlayout](https://dwm.suckless.org/patches/resetlayout/dwm-resetlayout-6.2.diff)

## Dependencies:
- [picom](https://wiki.archlinux.org/title/picom)
- [feh](https://wiki.archlinux.org/title/Feh)
- [slstatus](https://tools.suckless.org/slstatus/)
- [Hurmit Nerd Font](https://www.programmingfonts.org/#hermit)
- [Ubuntu Nerd Font](https://www.nerdfonts.com/font-downloads)
- [Rofi](https://github.com/davatorium/rofi)


## Wallpapers
  This project currently is experimental. My monitor is quiet small, so if there's any problem with wallpapers size, you may download them or try to change the --bg-fill.
  Also, if you prefer to save the wallpapers into another folder, remember to modify the variable THEME_DIR into the script.

## Keys

- `MOD + B` -- Open brave browser
- `MOD + R` -- Open rofi
- `MOD + Enter` -- Open alacritty
- `MOD + SHIFT + F` -- Full screen
- `MOD + SHIFT + Right Arrow` -- Move focus sreen to the right tag
- `MOD + SHIFT + Left Arrow` -- Move focus sreen to the left tag

## Contribute
There's 2 ways you can contribute to this project: add new themes and improve the dwmusic script.

### Add new theme:
Wallpaper: It should be an illustration or a portrait of any album. 
Colors: Try to innovate the color pallete. There's bunch of wallpappers that could be match with the currents themes. So, if preferable to focus on the color palette.
URL: remember to add the origin of the wallpaper.
Bar: Currently, the bar is quiet simple. if you have any idea, or suggestion. you can write it into the Issues tab.

### Script
Any improvement to the script or PKBUILD, will be appreciated.
Currently the script don't have msg error, LICENSE(GPLv3) , or MAN
any idea of implementation could be described into the Issues tabs. Currently i'm thinkin to add a script to download the wallpapers based on monitor sizes, instead of add them into the repo.


  
