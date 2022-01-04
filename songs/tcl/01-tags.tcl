#/usr/bin/tclsh

set tags [list "rock" "jazz" "rock" "pop" "pop"];
puts $tags;
puts [lindex $tags 1]

set tagsstr [join $tags ":"];
puts "$tagsstr\n";

puts [llength $tags]
