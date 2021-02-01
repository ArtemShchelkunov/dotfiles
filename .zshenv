export EDITOR="vim"
export BROWSER="chromium"


export XDG_CONFIG_HOME="$HOME"/.config
export XDG_CACHE_HOME="$HOME"/.cache
export XDG_DATA_HOME="$HOME"/.local/share

export ZDOTDIR=$HOME/.config/zsh
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
export XSERVERRC="$XDG_CONFIG_HOME"/X11/xserverrc
export XAUTHORITY="$XDG_CONFIG_HOME"/X11/Xauthority

alias abook=abook --config "$XDG_CONFIG_HOME"/abook/abookrc --datafile "$XDG_DATA_HOME"/abook/addressbook
alias xbindkeys=xbindkeys -f "$XDG_CONFIG_HOME"/xbindkeys/config

VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc" | source $MYVIMRC'
