// Updating a resource with PATCH
const fetch   = require("node-fetch")
const headers = { 'Content-type': 'application/json; charset=UTF-8' }
const baseURL = 'https://jsonplaceholder.typicode.com'
const id      = 1

fetch(`${baseURL}/posts/${id}`, {
  method: 'PATCH',
  body: JSON.stringify({
    title: 'foo',
  }),
  headers: headers
})
  .then((response) => response.json())
  .then((json) => console.log(json))
