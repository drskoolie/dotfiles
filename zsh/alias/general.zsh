# +--------------+
# | applications |
# +--------------+
# alias bat='batcat'
# alias cat='batcat --paging=never'

alias ls='ls -v --color'
alias bati='batcat ~/.dotfiles/i3/config'
alias batzag='batcat ~/.dotfiles/zsh/alias/general.zsh'

alias xrandr5='~/.dotfiles/screenlayout/5Mons.sh'
alias qemu='qemu-system-x86_64'

# +------------------+
# | change directory |
# +------------------+
alias cdc='cd ~/.chronicles'
alias cdcs='cd ~/.chronicles/schedule'

alias cdd='cd ~/.dotfiles/; ls'
alias cddi='cd ~/.dotfiles/i3; ls'
alias cddn='cd ~/.dotfiles/nvim/; ls'
alias cddnl='cd ~/.dotfiles/nvim/lua; ls'
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

alias cdm='cd /media/pyro/ST31000340NS/'
alias cdmm='cd /media/pyro/ST31000340NS/Media/'
alias cdmmm='cd /media/pyro/ST31000340NS/Media/music'
alias cdmma='cd /media/pyro/ST31000340NS/Media/Audiobooks/'
alias cdmma='cd /media/pyro/ST31000340NS/Media/Audiobooks/'

alias cdct='cd ~/Documents/thesis'
alias cdctt='cd ~/Documents/thesis/transformers'
alias cdcttc='cd ~/Documents/thesis/transformers/code'

# +-----+
# | fzf |
# +-----+
alias fzfp="fzf --preview 'batcat --style=numbers --color=always --style=numbers --line-range :500 {}'\
	--bind shift-up:preview-page-up,shift-down:preview-page-down\
	|xclip -selection clipboard"

# +--------+
# | neovim |
# +--------+
alias nvimg='nvim .gitignore'

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
alias sog='source ~/Documents/venv_global/bin/activate'
alias dea='deactivate'

alias soz='source ~/.dotfiles/zsh/.zshrc'
alias sozai='source ~/.dotfiles/zsh/alias/init.zsh'
alias sozat='source ~/.dotfiles/zsh/alias/taskwarrior.zsh'

alias sot='source ~/Documents/thesis/transformers/code/venv_transformers3_10/bin/activate'


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
