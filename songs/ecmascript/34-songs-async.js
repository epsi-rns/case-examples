import songs from "./songs-data.js"
let tags = []

// Receiver/Customer
const take = (message) => {
return new Promise(resolve => { 
  setTimeout(() => {
    if( "tag"  in message ) {
      tags.push(message.tag);
      resolve(message.tag)
    }
  }, Math.floor(Math.random() * 1000))
})
}

// Sender/Producer
const flatten = () => {
  let promises = []

  songs.forEach(song => {
    if( "tags" in song ) {
      (song.tags).forEach(tag => {
        promises.push(take({ tag: tag }))
      })
    }
  })
  
  return Promise.all(promises)
}

flatten().then(values => {
    console.log('Resolve Values: ', values);
    console.log('Global Tags: ', tags);
  });
