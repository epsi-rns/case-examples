#!/usr/bin/env tclsh

lappend auto_path "./"
package require MySongs 1.0
package require MyHelperFlatten 1.0
package require MyHelperUnique 1.0

set tags [flatten $MySongs::Songs]
puts [join [unique $tags] :]
