umask 077
#export LANG="en_US.utf8"
export LANG="de_DE.utf8"
export LC_ADDRESS="de_DE.utf8"
export LC_COLLATE="de_DE.utf8"
export LC_CTYPE="de_DE.utf8"
#export LC_IDENTIFICATION="en_US.utf8"
export LC_IDENTIFICATION="de_DE.utf8"
export LC_MEASUREMENT="de_DE.UTF-8"
#export LC_MESSAGES="en_US.utf8"
export LC_MESSAGES="de_DE.utf8"
export LC_MONETARY="de_DE.UTF-8"
export LC_NAME="de_DE.utf8"
export LC_NUMERIC="de_DE.UTF-8"
export LC_PAPER="de_DE.UTF-8"
export LC_TELEPHONE="de_DE.utf8"
export LC_TIME="de_DE.UTF-8"
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
export PATH

# Don't save a history file
unset HISTFILE
# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth
# set history length
HISTSIZE=1000

# Set a python startup script
export PYTHONSTARTUP="$HOME/.config/pythonrc"

# checks window size after each command
shopt -s checkwinsize

# set PS1
PS1="`shsetup PS1`"

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
	test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
	alias ls='ls --color=auto'
	alias dir='dir --color=auto'
	alias vdir='vdir --color=auto'

	alias grep='grep --color=auto'
	alias fgrep='fgrep --color=auto'
	alias egrep='egrep --color=auto'
fi

# I have hard time with having no "su" command
alias su='echo "use sudo instead"'

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
