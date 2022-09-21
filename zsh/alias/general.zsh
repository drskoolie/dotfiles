# +--------------+
# | applications |
# +--------------+
alias g='git'
alias ls='ls -v --color'
alias t='tmux'
alias s='scrot --select --line mode=edge ~/Pictures/screenshot.png'
alias S='scrot --select --line mode=edge'
alias xrandr5='~/dotfiles/screenlayout/5Mons.sh'

# +------------------+
# | change directory |
# +------------------+
alias cdc='cd ~/chronicles/;ls'
alias cdca='cd ~/chronicles/adventofcode/2015/;ls'
alias cdcb='cd ~/chronicles/books/;ls'
alias cdcbp='cd ~/chronicles/books/python;ls'
alias cdcs='cd ~/chronicles/schedule/;ls'
alias cdcrc='cd ~/chronicles/research/code;ls'

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

alias cdx='cd ~/Documents;ls'

# +-----+
# | fzf |
# +-----+
alias fzfp="fzf --preview 'batcat --style=numbers --color=always --style=numbers --line-range :500 {}'\
	--bind shift-up:preview-page-up,shift-down:preview-page-down\
	|xclip -selection clipboard"

# +--------+
# | neovim |
# +--------+
function n () 
{
	case $1 in
		g) nvim .gitignore;;

		i) nvim ~/dotfiles/i3/config;;

		l) nvim *.tex;;

		m) nvim ~/dotfiles/mpv/input.conf;;

		ni) nvim ~/dotfiles/nvim/init.lua;;
		nh) nvim ~/dotfiles/nvim/lua/config/hop/init.lua;;
		np) nvim ~/dotfiles/nvim/lua/core/plugins.lua;;
		ns) nvim ~/dotfiles/nvim/lua/config/sorcery/init.lua;;
		nw) nvim ~/dotfiles/nvim/lua/config/whichkey/keys/init.lua;;

		t) nvim ~/dotfiles/tmux/tmux.conf;;

		z) nvim ~/dotfiles/zsh/zshrc;;
		zag) nvim ~/dotfiles/zsh/alias/general.zsh;;
		zai) nvim ~/dotfiles/zsh/alias/init.zsh;;
		zp) nvim ~/dotfiles/zsh/packages.zsh;;
		*) nvim $1;;
	esac
}


# +-------+
# | nohup |
# +-------+

function no ()
{
	nohup $1 >/dev/null 2>&1 &
}

function noo ()
{
	nohup okular $1 >/dev/null 2>&1 &
}

function noz ()
{
	nohup zathura $1 >/dev/null 2>&1 &
}

function mkc ()
{
	mkdir -p $1 && cd $1 && ls
}

# +--------+
# | source |
# +--------+
alias sog='source ~/dotfiles/venv/venv_global/bin/activate'
alias sop='source venv*/bin/activate'
alias dea='deactivate'

alias soz='source ~/dotfiles/zsh/zshrc'

alias zshs='zsh source.zsh'

# Todo
alias todo='cat ~/chronicles/schedule/2022.txt | ag "^-"'

# +-------+
# | trash |
# +-------+
alias trl='trash-list'
alias trp='trash-put'
alias trr='trash-restore'

# +-------+
# | xclip |
# +-------+
alias pbpaste='xclip -selection clipboard -o'
alias pbcopy='xclip -selection clipboard'
