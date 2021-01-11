using Base.Iterators

include("MyUtils.jl")
include("MySongs.jl")
using .MySongs

function flatten(messages::Channel)
    songs::Array{Song} = getSongs()

    for song in songs
        if song.tags!=nothing
            for tag in song.tags
                put!(messages, tag)
            end
        end
    end
end

function walk(messages::Channel)
    newtags::Array{String} = []

    for tag in messages
        push!(newtags, tag)
    end
    
    return newtags
end

function run()
    messages = Channel(flatten)
    walk(messages)     |>
        MyUtils.unique |>
        println
end

run()
