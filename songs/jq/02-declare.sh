declare -A song
song['title']='Cantaloupe Island'
song['tags', 0]='60s'
song['tags', 1]='jazz'

echo ${song[@]}
echo ${song['title']}
echo ${song['tags', 0]}
