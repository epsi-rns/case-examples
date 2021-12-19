function unique() {
  local l_tags=("$@")

  if (( ${#l_tags[@]} <= 1 )); then
    echo "${l_tags[@]}"
  else
    local head=${l_tags[0]}
    local tail=${l_tags[@]:1}
    local exclude=( ${tail[@]/$head} )
    local uniq_temp=$(unique "${exclude[@]}")

    local return=($head)
    return+=(${uniq_temp[@]})
    echo "${return[@]}"
  fi
}
