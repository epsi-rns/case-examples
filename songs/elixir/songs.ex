defmodule Song do
  defstruct title: "", tags: []
end

defmodule Songs do
  def songs() do
    [
      %Song{ title: "Cantaloupe Island",
             tags:  ["60s", "jazz"] },
      %Song{ title: "Let It Be",
             tags:  ["60s", "rock"] },
      %Song{ title: "Knockin' on Heaven's Door",
             tags:  ["70s", "rock"] },
      %Song{ title: "Emotion",
             tags:  ["70s", "pop"] },
      %Song{ title: "The River"}
    ]
  end
end
