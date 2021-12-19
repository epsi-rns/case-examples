join='., " "'
path='.songs[].tags'
remove='select( . != null )'

filter="($path | $remove)[] | $join"
tags=$(jq -r "$filter" songs.json)
echo ${tags[@]}
