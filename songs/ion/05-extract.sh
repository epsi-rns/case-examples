#!/usr/bin/env ion
source ./MySongs.sh

let tagss = []

for song in @songs
  let pair = [@split($song ;)]
  if test $len(@pair) -gt 1
    let tagss ++= @pair[1]
  end
end

echo $join(@tagss ":")
