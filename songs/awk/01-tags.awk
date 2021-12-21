#!/bin/awk -f
BEGIN {
  FS=",";
  OFS=":";
}
{
  gsub(/,[ ]+/,",");
  $1=$1;
  print "|", $3, "|\t", $0;
}
END { }
