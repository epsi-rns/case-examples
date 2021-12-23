#!/bin/sh
exec sed -E '
/^(.*);(.*)$/!d; s/^(.*);(.*)$/\2/
' "$@" | 
exec sed -E '
:label;N;$!b label
s/(,|  *|\n ?)/ /g;s/^ //g;s/ /\n/g
' | sort -u | 
exec sed -E '
:label;N;$!b label
s/\n/:/g
'
