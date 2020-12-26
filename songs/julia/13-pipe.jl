using Base.Iterators

include("MySongs.jl")
using .MySongs

[   song.tags for song in getSongs()
    if song.tags!=nothing
] |> flatten |> collect |> unique |> println

