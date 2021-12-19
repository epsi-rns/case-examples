source ./MySongs.sh

declare -a tagss

# Split song record
IFS=';'
for song_item in "${songs[@]}"; do
  read title tags_temp <<< "${song_item}"
  tagss+=($tags_temp)
done

# Join tags list
IFS=':'
echo "${tagss[*]}"

unset IFS
