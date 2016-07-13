if [ -f ~/.bashrc ]; then . ~/.bashrc; fi 
if [ -f ~/.mark43_keys ]; then . ~/.mark43_keys; fi 
if [ -f ~/.mark43_profile ]; then . ~/.mark43_profile; fi 

export LESS=-erX
export TERM=xterm-color

################
# CORE ALIASES
################

# Quicker navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias mv="mv -i $*"        # ask user before clobbering file
alias mvf="mv -f $*"
alias rm="rm -i $*"        # ask user before clobbering file
alias rmf="rm -f $*"
alias cp="cp -i $*"        # ask user before clobbering file
alias cpf="cp -f $*"
alias ls='ls -aG'
alias ll='ls -halG'
alias lx="ls -lXB"         # sort by extension
alias lk="ls -lSr"         # sort by size, biggest last
alias lc="ls -ltcr"        # sort by and show change time, recent last
alias lt="ls -ltr"         # sort by date, recent last
alias lm="ls -al |more"    # pipe through 'more'
alias lr="ls -lR"          # recursive ls

alias fn="find . -name $*" # find by name

alias please='sudo'
alias javac='javac -Xlint'
alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'
alias engage="say -v bruce Engage;play -n -c1 synth whitenoise band -n 100 20 band -n 50 20 gain +25 fade h 1 864000 1"
alias scheme='plt-r5rs'
alias tmx2='tmux new-session \; split-window -h -p 50'
alias tmx3='tmux new-session \; split-window -h -p 66 \; split-window -h -p 50'

alias vl='vim $(!!)'        # vim the file name output by the last command

################
# COLORS
################

COLOR_OFF="\[\033[0m\]"
COLOR_BLACK="\[\033[0;90m\]"
COLOR_RED="\[\033[0;31m\]"
COLOR_GREEN="\[\033[0;92m\]"
COLOR_YELLOW="\[\033[0;93m\]"
COLOR_YELLOW_DIM="\[\033[0;33m\]"
COLOR_BLUE="\[\033[0;94m\]"
COLOR_MAGENTA="\[\033[0;35m\]"
COLOR_CYAN="\[\033[0;96m\]"
COLOR_WHITE="\[\033[0;97m\]"
COLOR_WHITE_DIM="\[\033[0;37m\]"

################
# PROMPT
################

# pull in __git_ps1
source /usr/local/opt/git/etc/bash_completion.d/git-completion.bash
source /usr/local/opt/git/etc/bash_completion.d/git-prompt.sh

# git is aliased to g, need to alias autocompletion
__git_complete g __git_main

# unstaged (*) and staged(+) changes
export GIT_PS1_SHOWDIRTYSTATE="1"
# whether there are stashed ($) changes
export GIT_PS1_SHOWSTASHSTATE="1"
# if there are untracked (%) files
export GIT_PS1_SHOWUNTRACKEDFILES="1"
# if we're ahead (>) or behind (<) or diverged (<>) relative to upstream
export GIT_PS1_SHOWUPSTREAM="auto"

# build prompt
TIME_12H="\T "
TIME_24H="\t "
PATH_SHORT="\w "
USER="\u"
BOX="\h"
MONEY_PROMPT=' $ '

export PS1=$COLOR_WHITE_DIM$TIME_24H$COLOR_BLUE$BOX' '$COLOR_YELLOW$PATH_SHORT'$(git branch &>/dev/null;\
if [ $? -eq 0 ]; then \
  echo "$(echo `git status` | grep "nothing to commit" > /dev/null 2>&1; \
  if [ "$?" -eq "0" ]; then \
    echo "'$COLOR_BLUE'"; \
  else \
    echo "'$COLOR_MAGENTA'"; \
  fi)$(__git_ps1 "(%s)")"; \
fi)'$COLOR_OFF$MONEY_PROMPT

################
# PATH
################

export PATH=.:/Users/mgoldman/Applications:$PATH

################
# LANGUAGES
################

# Ruby stuff
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.

# Racket
export PATH=$PATH:/Applications/Racket\ v6.0/bin

# Go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# nvm
export NVM_DIR=~/.nvm
source $NVM_DIR/nvm.sh
export PATH=$PATH:.node_modules/.vim

# set up Java
export JAVA_HOME=$(/usr/libexec/java_home)

# Python
source /usr/local/bin/virtualenvwrapper.sh

################
# MISC
################

#todo.txt stuff
alias todo='todo.sh'
export TODOTXT_AUTO_ARCHIVE=1
export TODOTXT_CFG_FILE=/Users/mgoldman/.todo/todo.cfg
export TODOTXT_PRESERVE_LINE_NUMBERS=0

bind '"[A":history-search-backward'
bind '"[B":history-search-forward'



