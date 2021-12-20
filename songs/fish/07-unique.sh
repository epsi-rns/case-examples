#!/usr/bin/env fish
source ./MySongs.sh
source ./MyHelperFlatten.sh

# Extract flatten output to array
set tags (flatten $songs | sort -u)
string join ':' $tags
