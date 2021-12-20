#!/usr/bin/env fish

set tags \
  "60s" "jazz" "60s" "rock" \
  "70s" "rock" "70s" "pop"

function exclude
  set -l value $argv[1]
  set -e argv[1]
  set -l tags $argv

  for i in (seq (count $tags) -1 1)
    if [ $tags[$i] = $value ]
      set -e tags[$i]
    end
  end

  string join \n $tags
end

string join ':' (exclude "rock" $tags)

