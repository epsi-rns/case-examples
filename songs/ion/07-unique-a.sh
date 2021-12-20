#!/usr/bin/env ion
source ./MySongs.sh
source ./MyHelperFlatten.sh

# Extract flatten output to array
flatten [@songs] | sort -u
