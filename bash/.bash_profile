export LESS=-erX
export TERM=xterm-color
export PS1="\[\e[31;1m\]\h:\[\e[33;1m\]\W \[\e[34;1m\]\u\$ \[\e[0m\]"
alias ls='ls -aG'
alias ll='ls -halG'
alias please='sudo'
alias javac='javac -Xlint'
alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'
alias engage="say -v bruce Engage;play -n -c1 synth whitenoise band -n 100 20 band -n 50 20 gain +25 fade h 1 864000 1"
alias scheme='plt-r5rs'

export PATH=/Users/mgoldman/Applications:/usr/local/bin:$PATH

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


# Setting PATH for Python 2.7
# The orginal version is saved in .profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# Ruby stuff
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.

# Racket
export PATH=/Applications/Racket\ v6.0/bin:$PATH
