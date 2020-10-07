if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi
alias grep="egrep -in"
# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
alias lt='ls --human-readable --size -1 -S --classify'
alias left='ls -t -1'
alias count='find . -type f | wc -l'
alias cpv='rsync -ah --info=progress2'

alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

alias l.='ls -d .* --color=auto'
alias c='clear'
alias bc='bc -l'
alias sha1='openssl sha1'
alias mkdir='mkdir -pv'
alias h='history'
alias j='jobs -l'

# Stop after sending count ECHO_REQUEST packets #
alias ping='ping -c 5'

# Do not wait interval 1 second, go fast #
alias fastping='ping -c 100 -s.2'

alias ports='netstat -tulanp'

# get web server headers #
alias header='curl -I'
 
# find out if remote server supports gzip / mod_deflate or not #
alias headerc='curl -I --compress'
alias path='echo -e ${PATH//:/\\n}'
alias now='date +"%T"'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'
alias gh='history|grep'

# do not delete / or prompt if deleting more than 3 files at a time #
alias rm='rm -I --preserve-root'
 
# confirmation #
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'
 
# Parenting changing perms on / #
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

alias apt-get="sudo apt-get"
alias updatey="sudo apt-get --yes"
 
# update on one command
alias update='sudo apt-get update && sudo apt-get upgrade'

# also pass it via sudo so whoever is admin can reload it without calling you #
alias nginxreload='sudo /usr/local/nginx/sbin/nginx -s reload'
alias nginxtest='sudo /usr/local/nginx/sbin/nginx -t'
alias lightyload='sudo /etc/init.d/lighttpd reload'
alias lightytest='sudo /usr/sbin/lighttpd -f /etc/lighttpd/lighttpd.conf -t'
alias httpdreload='sudo /usr/sbin/apachectl -k graceful'
alias httpdtest='sudo /usr/sbin/apachectl -t && /usr/sbin/apachectl -t -D DUMP_VHOSTS'

## pass options to free ##
alias meminfo='free -m -l -t'
 
## get top process eating memory
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
 
## get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'
 
## Get server cpu info ##
alias cpuinfo='lscpu'
 
## older system use /proc/cpuinfo ##
##alias cpuinfo='less /proc/cpuinfo' ##
 
## get GPU ram on desktop / laptop##
alias gpumeminfo='grep -i --color memory /var/log/Xorg.0.log'

alias wget='wget -c'

## Here’s an alias to find the top level of a Git project, no matter where in that project you are currently working, and then to change directory to it, change to the master branch, and perform a Git pull
alias startgit='cd `git rev-parse --show-toplevel` && git checkout master && git pull'

## the command cg takes you to the top of your Git project, no matter how deep into its directory structure you have descended.
alias cg='cd `git rev-parse --show-toplevel`'

## remove comment and empty lines
alias decomment='egrep -v "^[[:space:]]*((#|;|//).*)?$" '

alias realias='nano ~/.bash_aliases; source ~/.bash_aliases'

# opens explorer
alias ox="xdg-open $1"
alias op="xdg-open ."

alias lt='ls --human-readable --size -1 -S --classify'
alias left='ls -t -1'
alias count='find . -type f | wc -l'
alias cpv='rsync -ah --info=progress2'
alias gitd='git diff --color-words'
alias gits='git status'
alias gittoday='git log --pretty=oneline --abbrev-commit --since=midnight'
alias gitm='git commit -m '
alias gitchange='git commit --amend'

alias ed='micro'

alias start_dfr='cd ~/Projekter/fremmødesystem14 && ember s -p 7045'
alias cd_dfr='cd ~/Projekter/fremmødesystem14'

alias start_va='cd ~/Projekter/VisAftale3MF6 && ember s -p 7025'
alias cd_va='cd ~/Projekter/VisAftale3MF6'

alias start_intra='cd ~/Projekter/vissag-client && ember s -p 4201'
alias cd_intra='cd ~/Projekter/vissag-client'
