#!/usr/bin/tclsh

lappend auto_path "./"
package require MySongs 1.0

foreach song $MySongs::Songs {
  if [dict exist $song tags] {
    set tagss [dict get $song tags]
    puts $tagss
  }
}
