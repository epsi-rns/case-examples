#!/usr/bin/env ion

let tags:[str] = [ \
  "60s" "jazz" "60s" "rock" \
  "70s" "rock" "70s" "pop" ]

fn exclude value:str tags:[str]
  let tags \\= [$value]
  echo @tags
end

fn unique tags:[str]
  if test $len(@tags) -le 1
    echo @tags
  else
    let head =  @tags[0]
    let tail = [@tags[1..=$len(@tags)]]

    let xcld = [ @(exclude $head [@tail]) ]
    let uniq = [ @(unique [@xcld]) ]

    echo [ [$head] @uniq ]
  end
end

echo $join(@(unique [@tags]) :)
