"Use function to avoid global variable."
function main()
    tags::Array{String} =
        ["rock", "jazz", "rock", "pop", "pop"]

    println(tags)
    return nothing
end

main()
