#!/usr/bin/env ion

fn unique tags:[str]
  if test $len(@tags) -le 1
    echo @tags
  else
    let head =  @tags[0]
    let tail = [@tags[1..=$len(@tags)]]

    let tail \\= [$head]
    let uniq = [ @(unique [@tail]) ]

    echo [ [$head] @uniq ]
  end
end

