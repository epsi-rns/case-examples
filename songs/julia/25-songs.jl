using Base.Iterators

include("MyUtils.jl")
include("MySongs.jl")
using .MySongs

[   song.tags for song in getSongs()
    if song.tags!=nothing
] |> flatten |> collect |> MyUtils.unique |> println

