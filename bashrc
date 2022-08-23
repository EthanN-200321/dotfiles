#      _             _             
#     | |_  ___  ___| |_  _ _  ___ 
#   _ | . \<_> |<_-<| . || '_>/ | '
#  (_)|___/<___|/__/|_|_||_|  \_|_.
#            
	                         
# PS1, other env. variables
#export PS1="\e[30m[\e[1;93m\u\e[0;30m] \e[1;96m\w\n \e[1;94m$ \e[1;93m\e[1;94m\e[1;95m \e[m"
export PS1="\e[1;91m[\e[1;93m\u\e[1;91m] \e[34m\w\e[1;91m ::\e[95m~>\e[m "
export PATH="$HOME/.local/bin/:$HOME/.programs/appimages:$PATH"
export _JAVA_AWT_WM_NONREPARENTING=1
export EDITOR="vim"

# Aliases
alias ls="ls --color"
alias prg="tmux new-session \; source-file ~/.config/tmux/programming.conf;"
alias sv="source ./venv/bin/activate"
alias pb=". ~/.dots/polybar.sh"
alias remove-orphans='(set -x; sudo pacman -Rs $(pacman -Qdtq))'
alias neofetch="neofetch --ascii-colors 1 2 3 4 5 6 --ascii ~/.config/neofetch/ascii"

neofetch
# Cargo
#. "$HOME/.cargo/env"

[ -f "/home/ethan/.ghcup/env" ] && source "/home/ethan/.ghcup/env" # ghcup-env
