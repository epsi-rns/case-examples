#!/usr/bin/tclsh

proc sender {songs} {
  yield [info coroutine]

  foreach song $songs {
    if [dict exist $song tags] {
      set tagss [dict get $song tags]
      foreach tag $tagss {
        yield $tag
  }}}
  yield ""
}

proc receiver { message } {
  set tags {}

  while true {
    set tag [message]
    if {$tag == ""} {
      return $tags
    } elseif {[lsearch $tags $tag] < 0} {
      lappend tags $tag
    }
  }
}

# main: entry point
lappend auto_path "./"
package require MySongs 1.0

coroutine message sender $MySongs::Songs
set tags [receiver message]
puts "[join $tags ":"]\n"
