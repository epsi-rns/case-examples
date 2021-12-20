#!/usr/bin/env ion
source ./MySongs.sh
source ./MyHelperFlatten.sh

# Extract flatten output to array
let tags_fl = $(flatten [@songs])
let tags_un = [$(echo $tags_fl | sort -u)]
echo $join(@split(@tags_un \n) :)
