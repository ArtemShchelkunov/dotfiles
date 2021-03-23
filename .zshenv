export XDG_CONFIG_HOME="$HOME"/.config
export XDG_CACHE_HOME="$HOME"/.cache
export XDG_DATA_HOME="$HOME"/.local/share
export XDG_DOCUMENTS_DIR="$HOME/docs"
export XDG_DOWNLOAD_DIR="$HOME/downloads"
export XDG_MUSIC_DIR="$HOME/music"
export XDG_PICTURES_DIR="$HOME/pics"
export XDG_PUBLICSHARE_DIR="$HOME/public"
export XDG_TEMPLATES_DIR="$HOME/templates"
export XDG_VIDEOS_DIR="$HOME/vids"

export EDITOR="vim"
export BROWSER="qutebrowser"
export TERMINAL="st"
export HISTFILE="$XDG_DATA_HOME"/zsh/history
# export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export LESSHISTFILE="-"
   
export ZDOTDIR=$HOME/.config/zsh
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
export XSERVERRC="$XDG_CONFIG_HOME"/X11/xserverrc
export XAUTHORITY="$XDG_CONFIG_HOME"/X11/Xauthority
export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/pass

alias mbsync -c "$XDG_CONFIG_HOME"/isync/mbsyncrc
alias abook='abook --config "$XDG_CONFIG_HOME"/abook/abookrc --datafile "$XDG_DATA_HOME"/abook/addressbook'
alias xbindkeys='xbindkeys -f "$XDG_CONFIG_HOME"/xbindkeys/config'
alias pacman -Syu='pacman -Syu && pkill dwmblocks && echo "Restart blocks..." && dwmblocks &'
alias sudo='sudo '

#export VIMINIT='source "~/.config/vim/vimrc"'
export VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc" | source $MYVIMRC'

export PATH="$HOME/projects/scripts/:$PATH"
