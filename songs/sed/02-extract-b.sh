#!/bin/sh
exec sed -E '
/^(.*);(.*)$/!d
s/(.*;)//
s/,/ /g
s/  */ /g
s/^ //g
' "$@"
