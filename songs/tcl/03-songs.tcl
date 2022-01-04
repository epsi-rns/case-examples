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
  [ dict create title "The River" ]
];

puts [llength $songs] 

foreach song $songs {
  puts $song
}
