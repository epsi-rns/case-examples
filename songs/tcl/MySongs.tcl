namespace eval ::MySongs {
  namespace export Songs

  set version 1.0
  set MyDescription "MySongs"
  variable home [file join [pwd]\
    [file dirname [info script]]]
}

set ::MySongs::Songs [list \
  [ dict create \
    title "Cantaloupe Island" \
    tags  [list "60s" "jazz"] ] \
  [ dict create \
    title "Let It Be" \
    tags  [list "60s" "rock"] ] \
  [ dict create \
    title "Knockin' on Heaven's Door" \
    tags  [list "70s" "rock"] ] \
  [ dict create \
    title "Emotion" \
    tags  [list "70s" "pop"] ] \
  [ dict create title "The River" ]
];

package provide MySongs $MySongs::version
package require Tcl 8.0
