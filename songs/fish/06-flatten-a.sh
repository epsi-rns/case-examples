#!/usr/bin/env fish
source ./MySongs.sh

set -l tagss
set -l tags

for song_item in $songs
  echo $song_item | read -d ';' title tags
  set -a tagss $tags
end

for tags_item in $tagss
  echo $tags_item | read -d ',' -a tag_temp
  set -a tags $tag_temp
end

string join ':' $tagss
string join ':' $tags

