#!/bin/awk -f
BEGIN {
  FS="[;,]"
  i = 0
}
{
  gsub(/;[ ]+/,";")
  gsub(/,[ ]+/,",")

  $1=""
  OFS=":"
  $1=$1;
  
  split($0, tags_temp, ":")

  for (j in tags_temp)
    if (j > 1)
      tags[++i] = tags_temp[j]
}
END {
  ORS=":"

  for (k in tags) {
    if (k == i) ORS="\n"
    print tags[k]
  }
}
