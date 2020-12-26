using Base.Iterators

include("MySongs.jl")
using .MySongs

"Using collect() to unwrap iterator."
function run()
    songs::Array{Song} = getSongs()

    all_tags::Array{Array{String}} = [
        song.tags for song in songs
        if song.tags!=nothing
    ]

    println(collect(flatten(all_tags)))
end

run()
