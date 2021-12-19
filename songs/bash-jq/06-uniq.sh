jq -r "(.songs[].tags | \
       select( . != null ))[]" \
    songs.json \
  | sort \
  | uniq \
  | tr '\n' ' '
