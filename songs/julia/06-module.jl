include("MySongs.jl")

map(MySongs.getSongs()) do song
    println(song.tags)
end
