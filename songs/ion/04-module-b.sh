#!/usr/bin/env ion
source ./MySongs.sh

for song in @songs
  let pair = [@split($song ;)]
  if test $len(@pair) -gt 1
    echo "@pair[0] is [@pair[1]]"
  end
end

