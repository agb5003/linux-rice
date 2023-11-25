alias ls='ls --color=auto'
alias ll='ls -lav --ignore=..'   # show long listing of all except ".."
alias l='ls -lav --ignore=.?*'   # show long listing but no hidden dotfiles except "."

# [[ "$(whoami)" = "root" ]] && return

# [[ -z "$FUNCNEST" ]] && export FUNCNEST=100          # limits recursive functions, see 'man bash'
PS1="\u \W $ "
## Use the up and down arrow keys for finding a command in history
## (you can write some initial letters of the command first).
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

alias nv="nvim"

alias kittyconfig="nv ~/.config/kitty/kitty.conf"

alias critconfig="sudo nvim ~/.config/alacritty/alacritty.yml"

alias i3config="nv ~/.config/i3/config"

alias picomconfig="nv ~/.config/picom/picom.conf"

alias polybarconfig="nv ~/.config/polybar/config.ini"

alias desktopentries="cd ~/.local/share/applications"

alias updaterice="cp ~/.bashrc ~/repos/linux-rice/.bashrc && cp ~/.config/i3/config ~/repos/linux-rice/.config/i3/config && cp -r /home/max/.config/Code/User ~/repos/linux-rice/.config/Code/User && cp ~/.config/rofi/config.rasi ~/repos/linux-rice/.config/rofi/config.rasi && cp ~/.config/picom/picom.conf ~/repos/linux-rice/.config/picom/picom.conf && cp ~/.config/alacritty/alacritty.yml ~/repos/linux-rice/.config/alacritty/alacritty.yml && github-desktop"

alias cdpip="cd ~/repos/pip"

alias mousesens="xinput --set-prop 'pointer:Logitech PRO X' 'libinput Accel Speed' -0.6"

alias sshpi="ssh max@192.168.0.103"


export LD_PRELOAD="/usr/lib64/libglib-2.0.so"

export PATH=$PATH:/home/max/bin:/home/max/bin/pycharm-2023.2.3/bin:/home/max/bin/clion-2023.2.2/bin/

























neofetch

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
