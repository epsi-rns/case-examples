include("MySongs.jl")
using .MySongs

"Shorter namespace."
function run()
    songs = getSongs()
    
    maybe_tags = map(song -> song.tags, songs)
    all_tags = filter(tag -> tag!=nothing, maybe_tags)

    map(println, all_tags)
end

run()
