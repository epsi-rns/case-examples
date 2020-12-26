struct Song
    title::String
    tags::Array{String}
end

"You can use any function name."
function run()::Nothing
    song = Song("Cantaloupe Island",
                ["60s", "jazz"])

    println(song)
    return nothing
end

run()

