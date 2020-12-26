using Base.Iterators

include("MySongs.jl")
using .MySongs

println(unique(collect(flatten([
    song.tags for song in getSongs()
    if song.tags!=nothing
]))))
