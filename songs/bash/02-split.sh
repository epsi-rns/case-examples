declare -A song=(
  ['title']='Cantaloupe Island'
  ['tags']='60s|jazz'
)

echo ${#song[@]}
echo ${song['title']}
echo ${song['tags']}

# Internal Field Separator
IFS='|'
read tagss <<< "${song['tags']}"

echo ${tagss[@]}
