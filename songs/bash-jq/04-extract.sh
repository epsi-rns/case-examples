path='.songs[].tags'
remove='select( . != null )'
jq -r "$path | $remove" songs.json
