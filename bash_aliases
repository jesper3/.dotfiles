alias apt-upgrade="sudo apt-get update ; sudo apt-get upgrade"
alias shutdown-now="sudo shutdown -h now"

monkeypatch_cd() {
	cd $1
	echo $PWD > /tmp/pwd
}

standalone_emacs() {
	screen -d -m emacs $1
}

alias cd=monkeypatch_cd
alias emacs=standalone_emacs
