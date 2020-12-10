// Updating a resource with PUT
const fetch   = require("node-fetch")
const headers = { 'Content-type': 'application/json; charset=UTF-8' }
const baseURL = 'https://jsonplaceholder.typicode.com'
const id      = 1
const show    = json => console.log(json)

const options = {
  method: 'PUT',
  body: JSON.stringify({
    id: 1,
    title: 'foo',
    body: 'bar',
    userId: 1,
  }),
  headers: headers
}

const request = async () => {
  try {
    const response = await fetch(`${baseURL}/posts/${id}`, options)
    const json = await response.json()
    show(json)
  } catch(err) {
    console.log(err.message)
  }
}

request()
