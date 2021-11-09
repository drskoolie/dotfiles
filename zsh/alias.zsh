# +--------------+
# | applications |
# +--------------+
alias bat='batcat'
alias batza='batcat ~/.dotfiles/zsh/alias.zsh'
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

alias nvimz='nvim ~/.dotfiles/zsh/.zshrc'
alias nvimza='nvim ~/.dotfiles/zsh/alias.zsh'
alias nvimzp='nvim ~/.dotfiles/zsh/packages.zsh'

# +--------+
# | source |
# +--------+
alias sog='source ~/.config/venv_global/bin/activate'
alias sod='deactivate'
alias soz='source ~/.dotfiles/zsh/.zshrc'
alias soza='source ~/.dotfiles/zsh/alias.zsh'

# +------+
# | task |
# +------+
alias ta='task'
alias taa='task add'
alias tac='task calc'
alias tal='task list'

alias tap='task project:'
alias tapc='task project:Contact'
alias tapcw='task project:Contact.Whatsapp'
alias taph='task project:Home'
alias taphl='task project:Home.Laundry'
alias tapt='task project:Terminal'
alias taptn='task project:Terminal.New'
alias tapu='task project:UW'
alias tapub='task project:UW.Background'
alias tapu6='task project:UW.ece650'
alias tapu7='task project:UW.ece760'
alias tapum='task project:UW.me269'

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
