#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ -f ~/.welcome_screen ]] && . ~/.welcome_screen

_set_liveuser_PS1() {
    PS1='[\u@\h \W]\$ '
    if [ "$(whoami)" = "liveuser" ] ; then
        local iso_version="$(grep ^VERSION= /usr/lib/endeavouros-release 2>/dev/null | cut -d '=' -f 2)"
        if [ -n "$iso_version" ] ; then
            local prefix="eos-"
            local iso_info="$prefix$iso_version"
            PS1="[\u@$iso_info \W]\$ "
        fi
    fi
}
_set_liveuser_PS1
unset -f _set_liveuser_PS1

ShowInstallerIsoInfo() {
    local file=/usr/lib/endeavouros-release
    if [ -r $file ] ; then
        cat $file
    else
        echo "Sorry, installer ISO info is not available." >&2
    fi
}


alias ls='ls --color=auto'
alias ll='ls -lav --ignore=..'   # show long listing of all except ".."
alias l='ls -lav --ignore=.?*'   # show long listing but no hidden dotfiles except "."

[[ "$(whoami)" = "root" ]] && return

[[ -z "$FUNCNEST" ]] && export FUNCNEST=100          # limits recursive functions, see 'man bash'

## Use the up and down arrow keys for finding a command in history
## (you can write some initial letters of the command first).
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

################################################################################
## Some generally useful functions.
## Consider uncommenting aliases below to start using these functions.
##
## October 2021: removed many obsolete functions. If you still need them, please look at
## https://github.com/EndeavourOS-archive/EndeavourOS-archiso/raw/master/airootfs/etc/skel/.bashrc

_open_files_for_editing() {
    # Open any given document file(s) for editing (or just viewing).
    # Note1:
    #    - Do not use for executable files!
    # Note2:
    #    - Uses 'mime' bindings, so you may need to use
    #      e.g. a file manager to make proper file bindings.

    if [ -x /usr/bin/exo-open ] ; then
        echo "exo-open $@" >&2
        setsid exo-open "$@" >& /dev/null
        return
    fi
    if [ -x /usr/bin/xdg-open ] ; then
        for file in "$@" ; do
            echo "xdg-open $file" >&2
            setsid xdg-open "$file" >& /dev/null
        done
        return
    fi

    echo "$FUNCNAME: package 'xdg-utils' or 'exo' is required." >&2
}

#------------------------------------------------------------

## Aliases for the functions above.
## Uncomment an alias if you want to use it.
##

# alias ef='_open_files_for_editing'     # 'ef' opens given file(s) for editing
# alias pacdiff=eos-pacdiff
################################################################################
neofetch
alias nv="nvim"

PS1="\e[0;35m\u\e[0m \W % "

alias kittyconfig="nv ~/.config/kitty/kitty.conf"

alias critconfig="sudo nvim ~/.config/alacritty/alacritty.yml"

alias extdisp="xrandr --output HDMI-1-0 --mode 1920x1080 --rate 240 --output eDP --off"

alias laptopdisp="xrandr --output eDP --mode 1920x1080 --rate 144 --output HDMI-1-0 --off"

alias bothdisp="xrandr --output eDP --mode 1920x1080 --rate 144 --left-of HDMI-1-0 --output HDMI-1-0 --mode 1920x1080 --rate 240"

alias i3config="nv ~/.config/i3/config"

alias picomconfig="nv ~/.config/picom/picom.conf"

alias polybarconfig="nv ~/.config/polybar/config.ini"

xinput --set-prop 11 'libinput Accel Speed' -0.65

alias clocks="flatpak run org.gnome.clocks"

alias updaterice="cp ~/.bashrc ~/Documents/GitHub/linux-rice/.bashrc && cp ~/.config/kitty/kitty.conf ~/Documents/GitHub/linux-rice/.config/kitty/kitty.conf && github-desktop"
