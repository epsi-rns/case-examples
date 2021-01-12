import songs from "./songs-data.js";

const flatten = songs => {
  let tags = []

  songs.forEach(song => {
    if( "tags" in song ) {
      (song.tags).forEach(tag => {
        tags.push(tag)
      })
    }
  })

  return tags
}

console.log(flatten(songs))
