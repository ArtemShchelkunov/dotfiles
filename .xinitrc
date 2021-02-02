picom &
dwmblocks &
[ -f "$XDG_CONFIG_HOME"/feh/fehbg ] && "$XDG_CONFIG_HOME"/feh/fehbg || [ ! -f "$HOME"/.fehbg ] && [ ! -f "$XDG_CONFIG_HOME"/feh/fehbg ] && feh --bg-scale "$XDG_CONFIG_HOME"/wall.jpg && mv "$HOME"/.fehbg "$XDG_CONFIG_HOME"/feh/fehbg || [ -f "$HOME"/.fehbg ] && [ ! -f "$XDG_CONFIG_HOME"/feh/fehbg ] && mv "$HOME"/.fehbg "$XDG_CONFIG_HOME"/feh/fehbg || [ -f "$HOME"/.fehbg ] && [ -f "$XDG_CONFIG_HOME"/feh/fehbg ] && rm "$HOME"/.fehbg
xbindkeys -f ~/.config/xbindkeys/config
exec dwm

