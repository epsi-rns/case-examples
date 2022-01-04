#!/usr/bin/tclsh

lappend auto_path "./"
package require MySongs 1.0
package require MyHelperFlatten 1.0

set tags [flatten $MySongs::Songs]
set tagsstr [join $tags ":"]
puts "$tagsstr"
