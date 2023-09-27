# Colored Man Page
# export MANPAGER="sh -c 'col -bx | batcat -l man -p'"

# Show hidden files in fzf
export FZF_DEFAULT_COMMAND='rg --hidden --no-ignore --files'

# Editor
export EDITOR="/usr/local/bin/nvim"

# colours
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

 # manpages
# export MANPAGER='nvim +Man!'
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export MANWIDTH=999


# Adding to the path (~/bin)
export PATH=$PATH:$HOME/bin

# Npm
export PATH=~/.npm_global/bin:$PATH

# Adding Gams
export PATH=/opt/gams/gams42.1_linux_x64_64_sfx/:$PATH
export PATH=/opt/gams/gams42.2_linux_x64_64_sfx/:$PATH
