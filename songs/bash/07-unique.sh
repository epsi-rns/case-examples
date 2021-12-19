source ./MySongs.sh
source ./MyHelperFlatten.sh

# Extract flatten output to array
tags_fl=$(flatten ${songs[@]})
IFS=' '; read -a tags_flatten <<< "${tags_fl[@]}"

# https://bashwizard.com/displaying-unique-values/
declare -A tags_unique

for tag_item in "${tags_flatten[@]}"; do
  let tags_unique[$tag_item]++
done

tags=(${!tags_unique[@]})

IFS=':'
echo "${tags[*]}"
