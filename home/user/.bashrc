#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias wifiup='sudo wpa_supplicant -B -i wlo1 -c /etc/wpa_supplicant/wpa_supplicant.conf'
alias wifidown='sudo ~/.config/scripts/wifi-down.sh'
alias refmirrors='sudo reflector --verbose --latest 10 --country Spain --country France --protocol https --sort rate --save /etc/pacman.d/mirrorlist'
alias ls='ls --color=auto'

source /usr/share/git/completion/git-completion.bash

PS1='[\u@\h \W]\$ '
