#/usr/bin/tclsh

proc exclude {value tags} {
  return [lsearch -inline \
    -all -not -exact $tags $value]
}

proc unique {tags} {
  if { [llength $tags] <= 1 } {
    return $tags
  } else {
    # puts [llength $tags]
    set head [lindex $tags 0]
    set tail [lreplace $tags 0 0]

    set xcld [lsearch -inline \
      -all -not -exact $tail $head];
    set uniq [unique $xcld]

    return [linsert $uniq 0 $head]
  }
}

set tags [list "rock" \
  "jazz" "rock" "pop" "pop"];

puts "[join [unique $tags] ":"]\n";
