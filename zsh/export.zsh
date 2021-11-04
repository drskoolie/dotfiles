# Colored Man Page
export MANPAGER="sh -c 'col -bx | batcat -l man -p'"

# Show hidden files in fzf
export FZF_DEFAULT_COMMAND='rg --hidden --no-ignore --files'
