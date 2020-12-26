using Base.Iterators

include("MySongs.jl")
using .MySongs

"Using standard libraries."
function run()
    songs::Array{Song} = getSongs()

    all_tags::Array{Array{String}} = [
        song.tags for song in songs
        if song.tags!=nothing
    ]

    flatten_tags::Array{String} =
        collect(flatten(all_tags))

    println(unique(flatten_tags))
end

run()
