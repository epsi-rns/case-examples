function flatten() {
  local l_songs=("$@")

  # Split song record
  IFS=';'
  for song_item in "${l_songs[@]}"; do
    read title tags_temp <<< "${song_item}"

    # Split tags list
    for tags_item in "${tags_temp[@]}"; do
      IFS=','/ read -a tag_temp <<< "${tags_item}"
      tags_flatten+=(${tag_temp[@]})
    done
  done

  unset IFS
  echo "${tags_flatten[@]}"
}
