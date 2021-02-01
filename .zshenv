
export XDG_CONFIG_HOME="$HOME"/.config
export XDG_CACHE_HOME="$HOME"/.cache
export XDG_DATA_HOME="$HOME"/.local/share

export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
export XSERVERRC="$XDG_CONFIG_HOME"/X11/xserverrc
export XAUTHORITY="$XDG_CONFIG_HOME"/X11/Xauthority

alias abook=abook --config "$XDG_CONFIG_HOME"/abook/abookrc --datafile "$XDG_DATA_HOME"/abook/addressbook

VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc" | source $MYVIMRC'

#source ~/.config/zsh/.zshrc
