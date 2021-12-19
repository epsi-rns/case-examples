source ./MySongs.sh

# Internal Field Separator
IFS=';'

for song in "${songs[@]}"
do
  read title tags <<< "${song}"
  echo "${title} is [${tags}]"
done

unset IFS

