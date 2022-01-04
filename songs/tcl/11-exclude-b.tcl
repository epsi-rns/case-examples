#/usr/bin/tclsh

proc exclude {value tags} {
  return [lsearch -inline \
    -all -not -exact $tags $value]
}

set tags [list "rock" "jazz" "rock" "pop" "pop"]

puts "[join [exclude "rock" $tags] ":"]"
