// Creating a resource
const fetch   = require("node-fetch")
const headers = { 'Content-type': 'application/json; charset=UTF-8' }
const baseURL = 'https://jsonplaceholder.typicode.com'
const show    = json => console.log(json)

const options = {
  method: 'POST',
  body: JSON.stringify({
    title: 'foo',
    body: 'bar',
    userId: 1,
  }),
  headers: headers
}

const request = async () => {
  try {
    const response = await fetch(`${baseURL}/posts`, options)
    const json = await response.json()
    show(json)
  } catch(err) {
    console.log(err.message)
  }
}

request()
