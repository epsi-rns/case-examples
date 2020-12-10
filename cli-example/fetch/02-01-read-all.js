// Listing all resources
const fetch   = require("node-fetch")
const baseURL = 'https://jsonplaceholder.typicode.com'
const show    = json => console.log(json)

const request = async () => {
  try {
    const response = await fetch(`${baseURL}/posts`)
    const json = await response.json()
    show(json)
  } catch(err) {
    console.log(err.message)
  }
}

request()
