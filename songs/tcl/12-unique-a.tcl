#!/usr/bin/env tclsh

lappend auto_path "./"
package require MyHelperUnique 1.0

set tags [list "rock" \
  "jazz" "rock" "pop" "pop"]

puts [join [unique $tags] :]
