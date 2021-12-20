#!/usr/bin/env fish
source ./MySongs.sh

set -l tags
for song_item in $songs
  echo $song_item | read -d ';' title tags_temp

  for tags_item in $tags_temp
    echo $tags_item | read -d ',' -a tag_temp
    set -a tags $tag_temp
  end
end

string join ':' $tags
