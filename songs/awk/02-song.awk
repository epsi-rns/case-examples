#!/bin/awk -f
BEGIN {
  FS="[;,]"
}
{
  gsub(/;[ ]+/,";")
  gsub(/,[ ]+/,",")
  title=$1

  $1=""
  OFS=":"
  $1=$1

  OFS=" "
  print title, "is", $0
}
END { }
