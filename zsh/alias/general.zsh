if [ "$(hostname)" = "drskoolie5mon" ]; then
    alias bat='batcat'
fi

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
