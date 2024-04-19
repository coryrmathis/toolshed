#!/bin/zsh

touch favorite-albums.txt

osascript -e 'on run args' -e \
  'tell application "Music" to get album of every track of playlist (item 1 of args)' \
    -e 'end' "Favorite Albums" \
      | tr "," "\n" | sort | awk '!seen[$0]++' > favorite-albums.txt