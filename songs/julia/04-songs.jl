struct Song
    title::String
    tags::Array{String}
end

"Print each using map."
function run()::Nothing
    songs::Array{Song} = [
        Song("Cantaloupe Island",
             ["60s", "jazz"]),
        Song("Let It Be",
             ["60s", "rock"]),
        Song("Knockin' on Heaven's Door",
             ["70s", "rock"]),
        Song("Emotion",
             ["70s", "pop"]),
        Song("The River", [])
    ]

  map(println, songs)
  return nothing
end

run()
