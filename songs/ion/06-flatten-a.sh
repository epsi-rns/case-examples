#!/usr/bin/env ion
source ./MySongs.sh

let tagss = []
let tags  = []

for song_item in @songs
  let pair = [@split($song_item ;)]
  if test $len(@pair) -gt 1
    let tagss ++= @pair[1]
  end
end

for tags_item in @tagss
  let tag_temp = [@split($tags_item ,)]
  let tags ++= [@tag_temp]
end

echo $join(@tags ":")
