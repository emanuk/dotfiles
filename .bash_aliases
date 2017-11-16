# .bashrc

##################### M ##################
export PAGER="less"
export LESS="-eirMX"
# export SHELL="/bin/bash"
# export ENV="/home/emmanuel/.bashrc"
# export PS1="[\h]\u:\w \$ "
# export PS1="\w  % "
# export EDITOR=vim
# export TERM=xterm-color
# export COLUMNS=130
# export LINES=50
# export LANG=en_CA.UTF-8
# set bell-style visible
#setterm -blength 0
set -o vi
export PATH="$HOME/bin:$HOME/bin/navicat:$HOME/.config/composer/vendor/bin:$PATH"
# export TERM="xterm-256color"
#MMMMMMMMMMMMMMM ALIAS MMMMMMMMMMMMMMMMMMMMMMMM
alias gmt="perl -MHTTP::Date -e 'print \"\n\" . time2str(). \"\n\n\";'"
# alias grep='/usr/local/bin/pcregrep'
#alias grep='/usr/bin/egrep'
#alias vi='/usr/bin/vim'
alias jj='jobs'
alias rm='rm -i'
alias dr='ls -lF --color'
alias mv='mv -i'
alias cp='cp -i'
alias ll='ls -lFh --color'
alias lll='ls -alhF --color'
alias llll='ls -aldhF --color'
alias drush7="~/bin/drush7projet/drush"
alias cpe="/usr/local/crashplan/bin/CrashPlanEngine"
#alias cd="pushd"
#alias ccd="popd"
alias ack=ack-grep
alias ranger='ranger --choosedir=$HOME/.config/ranger/rangerdir;cd $(cat $HOME/.config/ranger/rangerdir)'


PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"'
########## M ##########################
function drm {
	ls -lF $1|more
}

function showip {
	# ifconfig -a| egrep 'inet '| sed s/(^[^\d]+\d+)/\1/
	ifconfig -a|perl -ne 'print "$1\n" if /inet ([^ \t]*)/'
}

function getpid {
  ps aux | grep -i $1
}



