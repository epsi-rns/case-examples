const unique = tags => {
  if (tags.length <= 1) {
    return tags
  } else {
    const [head, ...tail] = tags
    const newTails =
      unique(tail.filter(tag => tag != head))

    return [head, ...newTails]
  }
}

const tags =
  ["rock", "jazz", "rock", "pop", "pop"]

console.log(unique(tags))

