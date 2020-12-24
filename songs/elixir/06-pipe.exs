defmodule Run do
  import Songs
  tags =  Enum.map(songs(), fn(song) -> song.tags end)
  IO.inspect tags |> :lists.append |> Enum.uniq
end
