#!/bin/sh

case "$1" in
    *.tar*) tar tf "$1";;
    *.zip) unzip -l "$1";;
    *.rar) unrar l "$1";;
    *.7z) 7z l "$1";;
    *.pdf) pdftotext "$1" -;;
	*.pptx) unzip -qc "$1" | grep -oP '(?<=\<a:t\>).*?(?=\</a:t\>)';;

    *) batcat --style=plain --color always "$1" ;;
esac
