#!/usr/bin/tclsh

lappend auto_path "./"
package require MySongs 1.0

set tags [list]

foreach song $MySongs::Songs {
  if [dict exist $song tags] {
    set tagss [dict get $song tags]
    foreach tag $tagss {
      if {[lsearch $tags $tag] < 0} {
        lappend tags $tag
}}}}

set tagsstr [join $tags ":"];
puts "$tagsstr\n";
