defmodule Song do
  defstruct title: "", tags: []
end

defmodule Run do
  song = %Song{ 
    title: "Cantaloupe Island",
    tags:  ["60s", "jazz"]
  }

  IO.inspect song
end
