# +--------------+
# | applications |
# +--------------+
alias bat='batcat'
alias batzag='batcat ~/.dotfiles/zsh/alias/general.zsh'
alias cat='batcat --paging=never'

# +------------------+
# | change directory |
# +------------------+
alias cdd='cd ~/.dotfiles/; ls'
alias cddn='cd ~/.dotfiles/nvim/; ls'
alias cddt='cd ~/.dotfiles/taskwarrior; ls -a'
alias cdds='cd ~/.dotfiles/setup; ls'
alias cddz='cd ~/.dotfiles/zsh; ls'
alias cddza='cd ~/.dotfiles/zsh/alias; ls'

alias cdu='cd ~/Documents/university/'
alias cdu6='cd ~/Documents/university/ece650/'
alias cdu63='cd ~/Documents/university/ece650/gitlab/a2elhag/a3/'
alias cdu6a='cd ~/Documents/university/ece650/gitlab/a2elhag/'
alias cdu7='cd ~/Documents/university/ece760/'

alias cdh='cd ~/.help; ls'

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
alias sog='source ~/.config/venv_global/bin/activate'
alias sod='deactivate'
alias soz='source ~/.dotfiles/zsh/.zshrc'
alias sozai='source ~/.dotfiles/zsh/alias/init.zsh'
alias sozat='source ~/.dotfiles/zsh/alias/taskwarrior.zsh'

# +---------+
# | pdfgrep |
# +---------+

function grepp () 
{ 
	pdfgrep -i -n  $1 ~/Documents/university/ece650/lecture/pdf/*.pdf
}

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
