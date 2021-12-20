#!/usr/bin/env fish

set tags \
  "60s" "jazz" "60s" "rock" \
  "70s" "rock" "70s" "pop"

source ./MyHelperUnique.sh
string join ':' (unique $tags)
