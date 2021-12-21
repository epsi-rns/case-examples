#!/bin/awk -f
BEGIN {
  FS="[;,]"
  ORS=""
}
{
  gsub(/;[ ]+/,";")
  gsub(/,[ ]+/,",")

  $1=""
  OFS=":"
  
  $1=$1;

  OFS=" "
  print $0
}
END {
  print "\n"
}
