package ifneeded MySongs 1.0 \
  [list source [file join $dir MySongs.tcl]]

package ifneeded MyHelperUnique 1.0 \
  [list source [file join $dir MyHelperUnique.tcl]]

package ifneeded MyHelperFlatten 1.0 \
  [list source [file join $dir MyHelperFlatten.tcl]]
