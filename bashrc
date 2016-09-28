# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# Prompt theme
PS1='\[\e[1;32m\][\u@\h \W]\$\[\e[0m\] '

# User specific aliases and functions
alias emacs='emacs --no-desktop --no-splash --no-window-system'
alias la='ls -a'
alias l='ls'
alias cdexthdd='cd /run/media/$USER/*'

