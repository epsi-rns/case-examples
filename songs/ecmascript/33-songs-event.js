import songs from "./songs-data.js"
import { EventEmitter } from"events"

// Receiver/Customer
const walk = (eventEmitter) => {
  let tags = []
  eventEmitter.on('tag', tag => { tags.push(tag) })
  eventEmitter.on('quit', () => { console.log(tags) })
}

// Sender/Producer
const flatten = (eventEmitter) => {
  songs.forEach(song => {
    if( "tags" in song ) {
      (song.tags).forEach(tag => {
        eventEmitter.emit('tag', tag)
      })
    }
  })
}

// Program Entry Point
const eventEmitter = new EventEmitter()
walk(eventEmitter)
flatten(eventEmitter)
eventEmitter.emit('quit')
