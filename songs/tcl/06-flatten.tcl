#!/usr/bin/tclsh

lappend auto_path "./"
package require MySongs 1.0

set tags [list]

foreach song $MySongs::Songs {
  if [dict exist $song tags] {
    set tagss [dict get $song tags]
    foreach tag $tagss {
      lappend tags $tag
    }
  }
}

set tagsstr [join $tags ":"];
puts "$tagsstr";
