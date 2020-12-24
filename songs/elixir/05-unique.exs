defmodule Run do
  import Songs
  tags = for song <- songs(), do: song.tags
  IO.inspect Enum.uniq(:lists.append(tags))
end
