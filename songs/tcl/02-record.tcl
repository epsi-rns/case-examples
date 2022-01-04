#!/usr/bin/env tclsh

set song [ \
  dict create \
  title "Cantaloupe Island" \
  tags  [list "60s" "jazz"] \
]

puts $song

set title [dict get $song title]
puts $title

set tags [dict get $song tags]
puts $tags
puts [lindex $tags 0]
