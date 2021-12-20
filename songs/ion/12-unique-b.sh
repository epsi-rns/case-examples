#!/usr/bin/env ion
source ./MySongs.sh
source ./MyHelperFlatten.sh
source ./MyHelperUnique.sh

# Extract flatten output to array
let tags_nl = $(flatten [@songs])
let tags    = [@split($tags_nl \n)]
echo $join(@(unique [@tags]) :)
