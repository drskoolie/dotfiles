# +--------------+
# | applications |
# +--------------+
alias g='git'
alias t='tmux'
alias s='scrot --select --line mode=edge ~/Pictures/screenshot.png'
alias S='scrot --select --line mode=edge'

alias ls='ls -v --color'

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
