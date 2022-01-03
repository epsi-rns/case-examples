#/usr/bin/tclsh

set tags [list "rock" \
  "jazz" "rock" "pop" "pop"]
set tags [lsearch -inline \
  -all -not -exact $tags "rock"]
puts "[join $tags ":"]"

