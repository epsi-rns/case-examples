const exclude = (value: string,
        tags: Array<string>): Array<string> => {
  let newTags: Array<string> = []

  for (const tag of tags) {
    if (tag != value) newTags.push(tag)
   }

  return newTags
}

const tags: Array<string> =
  ["rock", "jazz", "rock", "pop", "pop"]

console.log(exclude("rock", tags))
