include("MySongs.jl")
using .MySongs

const MaybeTags = Array{Union{Array{String}, Nothing}}
const AllTags   = Array{Array{String}}

"You can remove all types for a more clean logic."
function run()
    songs::Array{Song} = getSongs()

    maybe_tags::MaybeTags =
        map(song -> song.tags, songs)

    all_tags::AllTags =
        filter(tag -> tag!=nothing, maybe_tags)

    map(println, all_tags)
end

run()
