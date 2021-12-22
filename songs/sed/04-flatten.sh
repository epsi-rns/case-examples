#!/bin/sh
exec sed -E '
/^(.*);(.*)$/!d
s/^(.*);(.*)$/\2/
s/,/ /g
s/  */ /g
s/^ //g
' "$@" | 
exec sed -E '
:label
N
$!b label
s/\n/ /g
s/ /:/g
'
