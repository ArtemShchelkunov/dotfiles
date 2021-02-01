zsh ~/.config/.fehbg &
picom &
dwmblocks &
xbindkeys -f "$XDG_CONFIG_HOME"/xbindkeys/config
exec dwm
