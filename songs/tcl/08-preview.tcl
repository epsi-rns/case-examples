#!/usr/bin/env tclsh

set songs [list \
  [ dict create \
    title "Cantaloupe Island" \
    tags  [list "60s" "jazz"] ] \
  [ dict create \
    title "Let It Be" \
    tags  [list "60s" "rock"] ] \
  [ dict create \
    title "Knockin\' on Heaven\'s Door" \
    tags  [list "70s" "rock"] ] \
  [ dict create \
    title "Emotion" \
    tags  [list "70s" "pop"] ] \
  [ dict create title "The River" ] ];

set tags {}
foreach song $songs {
  if [dict exist $song tags] {
    foreach tag [dict get $song tags] {
      if {[lsearch $tags $tag] < 0} {
        lappend tags $tag
}}}}

puts [join $tags ":"]
