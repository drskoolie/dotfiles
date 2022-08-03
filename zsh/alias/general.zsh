# +--------------+
# | applications |
# +--------------+
alias g='git'
alias ls='ls -v --color'
alias t='tmux'
alias xrandr5='~/.dotfiles/screenlayout/5Mons.sh'

# +------------------+
# | change directory |
# +------------------+
alias cdc='cd ~/.chronicles/;ls'
alias cdcs='cd ~/.chronicles/schedule/;ls'
alias cdcr='cd ~/.chronicles/research/;ls'

alias cdd='cd ~/.dotfiles/; ls'
alias cddi='cd ~/.dotfiles/i3; ls'
alias cddn='cd ~/.dotfiles/nvim/; ls'
alias cddnl='cd ~/.dotfiles/nvim/lua; ls'
alias cdds='cd ~/.dotfiles/setup; ls'
alias cddt='cd ~/.dotfiles/tmux; ls'
alias cddz='cd ~/.dotfiles/zsh; ls'
alias cddza='cd ~/.dotfiles/zsh/alias; ls'

alias cdf='cd ~/.fit/; ls'

# +-----+
# | fzf |
# +-----+
alias fzfp="fzf --preview 'batcat --style=numbers --color=always --style=numbers --line-range :500 {}'\
	--bind shift-up:preview-page-up,shift-down:preview-page-down\
	|xclip -selection clipboard"

# +---------+
# | lazygit |
# +---------+
alias lg='lazygit'
alias lgc='lazygit -p ~/.chronicles/'
alias lgd='lazygit -p ~/.dotfiles/'

# +--------+
# | neovim |
# +--------+
alias nvimcs='nvim ~/.chronicles/schedule/2022.txt'

alias nvimg='nvim .gitignore'

alias nvimi='nvim ~/.dotfiles/i3/config'

alias nviml='nvim *.tex'

alias nvimt='nvim ~/.dotfiles/tmux/tmux.conf'

alias nvimz='nvim ~/.dotfiles/zsh/.zshrc'
alias nvimzp='nvim ~/.dotfiles/zsh/packages.zsh'
alias nvimzai='nvim ~/.dotfiles/zsh/alias/init.zsh'
alias nvimzag='nvim ~/.dotfiles/zsh/alias/general.zsh'

# +-------+
# | nohup |
# +-------+

function no ()
{
	nohup $1 >/dev/null 2>&1 &
}

function noz ()
{
	nohup zathura $1 >/dev/null 2>&1 &
}

# +--------+
# | source |
# +--------+
alias sog='source ~/Documents/venv_global/bin/activate'
alias sop='source venv*/bin/activate'
alias dea='deactivate'

alias soz='source ~/.dotfiles/zsh/.zshrc'
alias sozai='source ~/.dotfiles/zsh/alias/init.zsh'

# Todo
alias todo='cat ~/.chronicles/schedule/2022.txt | ag "^-"'
# +-------+
# | trash |
# +-------+
alias tre='trash-empty'
alias trl='trash-list'
alias trp='trash-put'
alias trr='trash-restore'

# +-------+
# | xclip |
# +-------+
alias pbpaste='xclip -selection clipboard -o'
alias pbcopy='xclip -selection clipboard'
