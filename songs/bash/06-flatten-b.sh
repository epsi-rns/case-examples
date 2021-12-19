source ./MySongs.sh

# Split song record
IFS=';'
for song_item in "${songs[@]}"; do
  read title tags_temp <<< "${song_item}"

  # Split tags list
  for tags_item in "${tags_temp[@]}"; do
    IFS=','/ read -a tag_temp <<< "${tags_item}"
    tags+=(${tag_temp[@]})
  done
done

# Join tags list
IFS=':'
echo "${tags[*]}"
