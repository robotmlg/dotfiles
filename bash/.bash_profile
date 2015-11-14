if [ -f ~/.bashrc ]; then . ~/.bashrc; fi 

export LESS=-erX
export TERM=xterm-color
alias ls='ls -aG'
alias ll='ls -halG'
alias please='sudo'
alias javac='javac -Xlint'
alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'
alias engage="say -v bruce Engage;play -n -c1 synth whitenoise band -n 100 20 band -n 50 20 gain +25 fade h 1 864000 1"
alias scheme='plt-r5rs'

# git branch in prompt

parse_git_branch(){
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1=$'\[\e[34;1m\]\u\[\e[32;1m\]@\[\e[31;1m\]\h:\[\e[33;1m\]\W\[\e[0m\]$(parse_git_branch)\[\e[32;1m\]\$ \[\e[0m\]'

export PATH=.:/Users/mgoldman/Applications:/usr/local/bin:$PATH

#todo.txt stuff
export TODOTXT_AUTO_ARCHIVE=1
export TODOTXT_CFG_FILE=/Users/mgoldman/.todo/todo.cfg
export TODOTXT_PRESERVE_LINE_NUMBERS=0

bind '"[A":history-search-backward'
bind '"[B":history-search-forward'

##
# Your previous /Users/mgoldman/.profile file was backed up as /Users/mgoldman/.profile.macports-saved_2012-10-12_at_15:57:31
##

# MacPorts Installer addition on 2012-10-12_at_15:57:31: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


# Python Stuff
# Setting PATH for Python 2.7
# The orginal version is saved in .profile.pysave
PATH="$PATH:/Library/Frameworks/Python.framework/Versions/2.7/bin"
export PATH
source /usr/local/bin/virtualenvwrapper.sh

# Ruby stuff
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.

# Racket
export PATH=$PATH:/Applications/Racket\ v6.0/bin

# Go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
