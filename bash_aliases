#aliases file

#ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias t='thunar'
alias ls='ls --color=auto'
alias s='sudo bash -c "echo Sleeping 20 mins...; sleep 20m; pm-suspend"'
alias g='gcc -Wall'
alias vim='gvim'
alias temp='cat /proc/acpi/ibm/thermal'
alias upgrade='sudo aptitude upgrade'
