#!/bin/sh
exec sed '
s/,/ /g
s/  */ /g
' "$@"
