import Songs

IO.inspect songs()
  |> Enum.map(& &1.tags)
  |> :lists.append
  |> Enum.uniq

