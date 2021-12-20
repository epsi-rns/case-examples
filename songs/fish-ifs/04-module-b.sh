#!/usr/bin/env fish
source ./MySongs.sh

for song in $songs
  echo $song | read -d ';' title tags
  echo "$title is $tags"
end
