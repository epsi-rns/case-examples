namespace eval ::MyHelperFlatten {
  namespace export unique

  set version 1.0
  set MyDescription "MyHelperFlatten"
  variable home [file join [pwd]\
    [file dirname [info script]]]
}

proc flatten {songs} {
  set tags [list]

  foreach song $songs {
    if [dict exist $song tags] {
      set tagss [dict get $song tags]
      foreach tag $tagss {
        lappend tags $tag
      }
    }
  }

  return $tags
}

package provide MyHelperFlatten $MyHelperFlatten::version
package require Tcl 8.0
