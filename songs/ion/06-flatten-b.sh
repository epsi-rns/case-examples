#!/usr/bin/env ion
source ./MySongs.sh
let tags  = []

for song_item in @songs
  let pair = [@split($song_item ;)]
  if test $len(@pair) -gt 1
    let tags ++= [@split(@pair[1] ,)]
  end
end

echo $join(@tags ":")
