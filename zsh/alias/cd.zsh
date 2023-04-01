# +------------------+
# | change directory |
# +------------------+
alias cdd='cd ~/dotfiles/; ls'

function mkc ()
{
	mkdir -p $1 && cd $1 && ls
}
