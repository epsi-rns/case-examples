include("MySongs.jl")
using .MySongs

"Using list comprehensive."
function run()
    songs::Array{Song} = getSongs()

    all_tags::Array{Array{String}} = [
        song.tags for song in songs
        if song.tags!=nothing
    ]

    map(println, all_tags)
end

run()
