// Updating a resource with PUT
const fetch   = require("node-fetch")
const headers = { 'Content-type': 'application/json; charset=UTF-8' }
const baseURL = 'https://jsonplaceholder.typicode.com'
const id      = 1

fetch(`${baseURL}/posts/${id}`, {
  method: 'PUT',
  body: JSON.stringify({
    id: 1,
    title: 'foo',
    body: 'bar',
    userId: 1,
  }),
  headers: headers
})
  .then((response) => response.json())
  .then((json) => console.log(json))
