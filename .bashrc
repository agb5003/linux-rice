alias ls='ls --color=auto'
alias ll='ls -lav --ignore=..'   # show long listing of all except ".."
alias l='ls -lav --ignore=.?*'   # show long listing but no hidden dotfiles except "."

[[ "$(whoami)" = "root" ]] && return

[[ -z "$FUNCNEST" ]] && export FUNCNEST=100          # limits recursive functions, see 'man bash'

## Use the up and down arrow keys for finding a command in history
## (you can write some initial letters of the command first).
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

alias nv="nvim"

alias kittyconfig="nv ~/.config/kitty/kitty.conf"

alias critconfig="sudo nvim ~/.config/alacritty/alacritty.yml"

alias extdisp="xrandr --output HDMI-1-0 --mode 1920x1080 --rate 240 --output eDP --off"

alias laptopdisp="xrandr --output eDP --mode 1920x1080 --rate 144 --output HDMI-1-0 --off"

alias bothdisp="xrandr --output eDP --mode 1920x1080 --rate 144 --left-of HDMI-1-0 --output HDMI-1-0 --mode 1920x1080 --rate 240"

alias i3config="nv ~/.config/i3/config"

alias picomconfig="nv ~/.config/picom/picom.conf"

alias polybarconfig="nv ~/.config/polybar/config.ini"

alias updaterice="cp ~/.bashrc ~/GitHub/linux-rice/.bashrc && cp ~/.config/i3/config ~/GitHub/linux-rice/.config/i3/config && cp -r /home/max/.config/Code/User ~/GitHub/linux-rice/.config/Code/User && cp ~/.config/rofi/config.rasi ~/GitHub/linux-rice/.config/rofi/config.rasi && github-desktop"

alias cdpip="cd ~/Documents/GitHub/pip"

export LD_PRELOAD="/usr/lib64/libglib-2.0.so"


