#      _             _             
#     | |_  ___  ___| |_  _ _  ___ 
#   _ | . \<_> |<_-<| . || '_>/ | '
#  (_)|___/<___|/__/|_|_||_|  \_|_.
#            
	                         
# PS1, other env. variables
#export PS1="\e[0;36m┌—\e[0;34m<\e[0;36m—\e[0;34m{\e[0;35m\u\e[0;34m@\e[0;36m\h\e[0;34m}\e[0;36m——\e[0;34m<\e[0;35m\w\e[0;34m>\e[0;36m—\e[0;34m\e[0;36m\e[0;34m>\n\e[0;36m└\e[0;34m> \e[0;35m$ \e[m"
#export PS1="\e[0;36m┌—\e[0;34m<\e[0;36m—\e[0;34m{\e[0;35methan\e[0;34m@\e[0;36m\h\e[0;34m}\e[0;36m——\e[0;34m<\e[0;35m\w\e[0;34m>\e[0;36m—\e[0;34m\e[0;36m\e[0;34m>\n\e[0;36m└\e[0;34m> \e[0;35m$ \e[m"
export PS1="\e[0;34m[\e[1;31m\u\e[0;34m] \e[1;34m\w\n\e[1;31m $ \e[1;34m\e[1;31m\e[1;35m\e[m "
export PATH="$HOME/.programs/appimages:$PATH"
export _JAVA_AWT_WM_NONREPARENTING=1
export EDITOR="vim"

# Aliases
alias ls="ls --color"
alias prg="tmux new-session \; source-file ~/.config/tmux/programming.conf;"
alias pb=". ~/.dots/polybar.sh"
alias remove-orphans='(set -x; sudo pacman -Rs $(pacman -Qdtq))'
alias neofetch="neofetch --ascii ~/.config/neofetch/ascii"

neofetch
# Cargo
#. "$HOME/.cargo/env"
