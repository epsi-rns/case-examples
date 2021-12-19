source ./MySongs.sh
source ./MyHelperFlatten.sh
source ./MyHelperUnique.sh

# Extract flatten output to array
tags_fl=$(flatten ${songs[@]})
IFS=' '; read -a tags_flatten <<< "${tags_fl[@]}"

# Extract unique output to array
tags_un=$(unique ${tags_flatten[@]})
IFS=' '; read -a tags_ar <<< "${tags_un[@]}"
IFS=":"; echo "${tags_ar[*]}"
