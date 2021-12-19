title=$(jq -r .songs[1].title songs.json)
echo $title

tags=( $(jq -r .songs[1].tags[] songs.json) )
echo ${#tags[@]}
echo ${tags[@]}
