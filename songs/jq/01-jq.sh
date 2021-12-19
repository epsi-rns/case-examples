json='{
  "tags": [
    "rock", "jazz", "rock", "pop", "pop"
  ]
}'
tags=$(echo $json | jq -r .tags[])
echo ${tags[@]}
