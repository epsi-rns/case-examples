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
  i=0
  for (t in tags) {
    if ( !exist[tags[t]]++ ) {
      unique[++i] = tags[t]
    }
  }

  ORS=":"
  for (u in unique) {
    if (u == i) ORS="\n"
    print unique[u]
  }
}
