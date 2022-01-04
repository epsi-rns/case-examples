namespace eval ::MyHelperUnique {
  namespace export unique

  set version 1.0
  set MyDescription "MyHelperUnique"
  variable home [file join [pwd]\
    [file dirname [info script]]]
}

proc unique {tags} {
  if { [llength $tags] <= 1 } {
    return $tags
  } else {
    set head [lindex $tags 0]
    set tail [lreplace $tags 0 0]

    set xcld [lsearch -inline \
      -all -not -exact $tail $head];
    set uniq [unique $xcld]

    return [linsert $uniq 0 $head]
  }
}

package provide MyHelperUnique $MyHelperUnique::version
package require Tcl 8.0
