using Base.Iterators

include("MySongs.jl")
using .MySongs

function ∘(f, g)
    x -> g(f(x))
end

[   song.tags for song in getSongs()
    if song.tags!=nothing
] |> (flatten ∘ collect ∘ unique ∘ println)

