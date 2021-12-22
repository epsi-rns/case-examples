#!/bin/sh
exec sed --debug '
s/,/ /g
s/  */ /g
' "$@"
