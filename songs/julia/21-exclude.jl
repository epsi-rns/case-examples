tags = ["rock", "jazz", "rock", "pop", "pop"]

function exclude(value)
  tags -> filter(tag -> tag!=value, tags)
end

tags |> exclude("rock") |> println
