source ./MyHelperUnique.sh

declare -a tags=(
  "60s" "jazz" "60s" "rock"
  "70s" "rock" "70s" "pop")

# Extract output to array
tags_un=$(unique ${tags[@]})
IFS=' '; read -a tags_ar <<< "${tags_un[@]}"
IFS=":"; echo "${tags_ar[*]}"
