#!/bin/sh
# unset COLORTERM
batcat --style=plain --color always "$@"
# case "$1" in
#     *.tar*) tar tf "$1";;
#     *.zip) unzip -l "$1";;
#     *.rar) unrar l "$1";;
#     *.7z) 7z l "$1";;
#     *.pdf) pdftotext "$1" -;;
#     *) batcat "$1" ;;
# esac
# # *) batcat --color --style=plain always "$1" ;;
