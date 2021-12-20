#!/usr/bin/env fish
source ./MySongs.sh

set -l tagss

for song in $songs
  echo $song | read -d ';' title tags
  set -a tagss $tags
end

string join ':' $tagss
