# +--------------+
# | applications |
# +--------------+
alias bat='batcat'
alias batza='batcat ~/.dotfiles/zsh/alias.zsh'
alias cat='batcat --paging=never'

# +------------------+
# | change directory |
# +------------------+
alias cdd='cd ~/.dotfiles/; ls'
alias cddn='cd ~/.dotfiles/nvim/; ls'
alias cddt='cd ~/.dotfiles/taskwarrior; ls -a'
alias cddz='cd ~/.dotfiles/zsh; ls'
alias cddza='cd ~/.dotfiles/zsh/alias; ls'

alias cdu='cd ~/Documents/university/ece650/'
alias cdua='cd ~/Documents/university/ece650/gitlab/a2elhag/'

alias cdh='cd ~/.help; ls'

alias cds='cd ~/.dotfiles/setup; ls'

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

alias nvimt='nvim ~/.dotfiles/taskwarrior/.taskrc'

alias nvimz='nvim ~/.dotfiles/zsh/.zshrc'
alias nvimzp='nvim ~/.dotfiles/zsh/packages.zsh'
alias nvimzai='nvim ~/.dotfiles/zsh/alias/init.zsh'
alias nvimzag='nvim ~/.dotfiles/zsh/alias/general.zsh'
alias nvimzat='nvim ~/.dotfiles/zsh/alias/taskwarrior.zsh'

# +--------+
# | source |
# +--------+
alias sog='source ~/.config/venv_global/bin/activate'
alias sod='deactivate'
alias soz='source ~/.dotfiles/zsh/.zshrc'
alias sozai='source ~/.dotfiles/zsh/alias/init.zsh'
alias sozat='source ~/.dotfiles/zsh/alias/taskwarrior.zsh'

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
