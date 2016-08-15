#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi

if [ -f /tmp/pwd ]; then
	if [ -f /tmp/setpwd ]; then
		OUT=`cat /tmp/setpwd`
		if [ $OUT -eq 1 ]; then
			cd `cat /tmp/pwd` && echo "0" > /tmp/setpwd
		fi
	fi
fi
