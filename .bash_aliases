# .bashrc

##################### M ##################
export LC_CTYPE=fr_CA.UTF-8
export LC_ALL=fr_CA.UTF-8

export PAGER="less"
export LESS="-eirMX"
export EDITOR=vim
set -o vi

# vim gnu-gpg
GPG_TTY=`tty`
export GPG_TTY
#MMMMMMMMMMMMMMM ALIAS MMMMMMMMMMMMMMMMMMMMMMMM
alias gmt="perl -MHTTP::Date -e 'print \"\n\" . time2str(). \"\n\n\";'"
alias jj='jobs'
alias rm='rm -i'
alias dr='ls -lF --color'
alias mv='mv -i'
alias cp='cp -i'
alias ll='ls -lFh --color'
alias lll='ls -alhF --color'
alias llll='ls -aldhF --color'
alias drush7="~/bin/drush7projet/drush"
alias ranger='ranger --choosedir=$HOME/.config/ranger/rangerdir;cd $(cat $HOME/.config/ranger/rangerdir)'
alias ifconfig='ip addr show'

# ruby, gem, jekyll
export GEM_HOME="$HOME/gems"
export PATH="$HOME/gems/bin:$PATH"
export PATH=$HOME/.local/share/gem/ruby/3.0.0/bin:$PATH
alias jek='bundle exec jekyll'
alias mux='tmuxinator'



# git
source $HOME/.git-prompt.sh
source $HOME/.git-completion.bash

# export GIT_PS1_SHOWDIRTYSTATE=1
# export PS1='\w$(__git_ps1 " (%s)")\$ '

# PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007$(__git_ps1 "[%s]")"'
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



