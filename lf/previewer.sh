#!/bin/sh

HOSTNAME=$(hostname)

# Decide whether to use bat or batcat based on the hostname
if [ "$HOSTNAME" = "drskoolie5mon" ]; then
    BATCMD="batcat"
else
    # Default command if neither hostname matches
    BATCMD="bat"
fi


case "$1" in
    *.tar*) tar tf "$1";;
    *.zip) unzip -l "$1";;
    *.rar) unrar l "$1";;
    *.7z) 7z l "$1";;

    *.pdf) pdftotext "$1" -;;
	*.pptx) unzip -qc "$1" | grep -oP '(?<=\<a:t\>).*?(?=\</a:t\>)';;

	*.png|*.jpg|*.jpeg|*.mkv|*.mp4|*.3gp) mediainfo "$1";;

    *.csv) rich -h 50 --force-terminal --no-wrap --theme dracula "$1" ;;

    *.ipynb) rich -h 50 --force-terminal --no-wrap --theme dracula "$1" ;;

    *) $BATCMD -n --color always "$1" ;;
esac
