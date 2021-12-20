#!/usr/bin/env ion

let tags:[str] = [ \
  "60s" "jazz" "60s" "rock" \
  "70s" "rock" "70s" "pop" ]

fn exclude value:str tags:[str]
  let tags \\= [$value]
  echo @tags
end

let tags_ex = [@(exclude "rock" [@tags])]
echo $join(@tags_ex :)
