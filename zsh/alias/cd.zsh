# +------------------+
# | change directory |
# +------------------+
alias cdc='cd ~/chronicles/;ls'
alias cdcb='cd ~/chronicles/books/;ls'

alias cdd='cd ~/dotfiles/; ls'
alias cddi='cd ~/dotfiles/i3; ls'
alias cddn='cd ~/dotfiles/nvim/; ls'
alias cddnl='cd ~/dotfiles/nvim/lua; ls'
alias cdds='cd ~/dotfiles/setup; ls'
alias cddt='cd ~/dotfiles/tmux; ls'
alias cddv='cd ~/dotfiles/venv/;ls'
alias cddz='cd ~/dotfiles/zsh; ls'
alias cddza='cd ~/dotfiles/zsh/alias; ls'

alias cdr='cd ~/research/;ls'
alias cdrl='cd ~/research/lit/;ls'
alias cdrli='cd ~/research/lit/ieee/;ls'

alias cdx='cd ~/Documents;ls'

function mkc ()
{
	mkdir -p $1 && cd $1 && ls
}

