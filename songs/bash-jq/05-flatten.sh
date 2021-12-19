path='.songs[].tags'
remove='select( . != null )'

tags=$(jq -r "($path | $remove)[]" songs.json)
echo ${tags[@]}

