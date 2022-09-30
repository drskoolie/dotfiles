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

		u) nvim ~/dotfiles/install/install-ubuntu.sh;;

		z) nvim ~/dotfiles/zsh/zshrc;;
		zaa) nvim ~/dotfiles/zsh/alias/applications.zsh;;
		zac) nvim ~/dotfiles/zsh/alias/cd.zsh;;
		zag) nvim ~/dotfiles/zsh/alias/general.zsh;;
		zai) nvim ~/dotfiles/zsh/alias/init.zsh;;
		zanh) nvim ~/dotfiles/zsh/alias/nohup.zsh;;
		zan) nvim ~/dotfiles/zsh/alias/nvim.zsh;;
		zp) nvim ~/dotfiles/zsh/packages.zsh;;
		*) nvim $1;;
	esac
}


