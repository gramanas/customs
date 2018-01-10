#
# ~/.bash_profile
#

setxkbmap -option ctrl:nocaps

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [ -z "$DISPLAY" ] && [ "$(fgconsole)" -eq 1 ]; then
    exec startx -- -dpi 96
fi
