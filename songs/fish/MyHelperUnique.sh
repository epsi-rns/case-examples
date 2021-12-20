#!/usr/bin/env fish

function exclude
  set -l value $argv[1]
  set -e argv[1]
  set -l tags $argv

  for i in (seq (count $tags) -1 1)
    if [ $tags[$i] = $value ]
      set -e tags[$i]
    end
  end

  string join \n $tags
end

function unique
  if [ (count $argv) -le 1 ]
    echo $argv
  else
    set -l head $argv[1]
    set -e argv[1]
    set -l tail $argv
    
    set -l tags (exclude $head $tail)
    set -l tags (string join \n $tags)
    set -l uniq (unique $tags)

    set -l return $head
    set -a return $uniq
    string join \n $return
  end
end
