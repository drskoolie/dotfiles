# +--------------+
# | applications |
# +--------------+
alias bat='batcat'
alias batza='batcat ~/.config/zsh/alias.zsh'
alias cat='batcat --paging=never'

# +------------------+
# | change directory |
# +------------------+
alias cda='cd ~/Documents/university/ece650/gitlab/a2elhag/'
alias cdh='cd ~/.help'
alias cdu='cd ~/Documents/university/ece650/'

alias cdd='cd ~/.dotfiles'
alias cddn='cd ~/.dotfiles/nvim/'
alias cddz='cd ~/.dotfiles/zsh'

# +-----+
# | fzf |
# +-----+
alias fzfp="fzf --preview 'batcat --style=numbers --color=always --style=numbers --line-range :500 {}'\
	--bind shift-up:preview-page-up,shift-down:preview-page-down\
	|xclip -selection clipboard"

# +--------+
# | neovim |
# +--------+
alias nvimi='nvim ~/.dotfiles/i3/config'

alias nvimz='nvim ~/.dotfiles/.zshrc'
alias nvimza='nvim ~/.dotfiles/zsh/alias.zsh'
alias nvimzp='nvim ~/.dotfiles/zsh/packages.zsh'

# +--------+
# | source |
# +--------+
alias sog='source ~/.config/venv_global/bin/activate'
alias sod='deactivate'
alias soz='source ~/.zshrc'

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
