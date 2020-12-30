const unique = <T>(tags: T[]): T[] => {
  if (tags.length <= 1) {
    return tags
  } else {
	const [head, ...tail] = tags
    const newTails: T[] =
      unique(tail.filter(tag => tag != head))

    return [head, ...newTails]
  }
}

const tags: Array<string> =
  ["rock", "jazz", "rock", "pop", "pop"]

console.log(unique<string>(tags))

