declare -a tags=(
  "60s" "jazz" "60s" "rock"
  "70s" "rock" "70s" "pop")

function exclude() {
  local val=$1
  shift
  local tags=("$@")
  
  local return=( ${tags[@]/$val} )
  echo "${return[@]}"
}

# Extract output to array
tags_ex=$(exclude "rock" ${tags[@]})
IFS=' '; read -a tags_ar <<< "${tags_ex[@]}"
IFS=":"; echo "${tags_ar[*]}"
