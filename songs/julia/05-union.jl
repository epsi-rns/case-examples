struct Song
    title::String
    tags::Union{Array{String}, Nothing}
end

function run()
    songs::Array{Song} = [
        Song("Cantaloupe Island",
             ["60s", "jazz"]),
        Song("Let It Be",
             ["60s", "rock"]),
        Song("Knockin' on Heaven's Door",
             ["70s", "rock"]),
        Song("Emotion",
             ["70s", "pop"]),
        Song("The River", nothing)
    ]

    map(song -> println(song.tags), songs)
end

run()

