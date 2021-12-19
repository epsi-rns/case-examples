source ./MySongs.sh

declare -a tagss
declare -a tags

# Split song record
IFS=';'
for song_item in "${songs[@]}"; do
  read title tags_temp <<< "${song_item}"
  tagss+=($tags_temp)
done

# Split tags list
IFS=','
for tags_item in "${tagss[@]}"; do
  read tag_temp <<< "${tags_item}"
  tags+=(${tag_temp[@]})
done

# Join tags list
IFS=':'
echo "${tags[*]}"

unset IFS
