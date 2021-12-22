#!/bin/sh
exec sed -E '
:label
s/three//g
N
$!b label

s/\n/:/g
' "$@"
