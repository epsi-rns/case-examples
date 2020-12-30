const exclude = (value: string,
        tags: Array<string>): Array<string> => {
  return tags.filter(tag => tag != value)
}

const unique = (tags: Array<string>)
             : Array<string> => {
  if (tags.length <= 1) {
    return tags
  } else {
	const [head, ...tail] = tags
    const newTails: Array<string> =
      unique(exclude(head, tail))

    return [head, ...newTails]
  }
}

const tags: Array<string> =
  ["rock", "jazz", "rock", "pop", "pop"]

console.log(unique(tags))

