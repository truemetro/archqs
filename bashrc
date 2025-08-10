#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias hyprcfg='nvim ~/.config/hypr/hyprland.conf'
PS1='[\u@\h \W]\$ '

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

eval "$(oh-my-posh init bash --config "~/.config/omp/catppuccin_mocha.omp.json")"

echo -e "\e[034mShe said: dont make others suffer for your personal hatred.\e[0m
"
fastfetch
