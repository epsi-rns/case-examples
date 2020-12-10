// Creating a resource
const fetch   = require("node-fetch")
const headers = { 'Content-type': 'application/json; charset=UTF-8' }
const baseURL = 'https://jsonplaceholder.typicode.com'

fetch(`${baseURL}/posts`, {
  method: 'POST',
  body: JSON.stringify({
    title: 'foo',
    body: 'bar',
    userId: 1,
  }),
  headers: headers
})
  .then((response) => response.json())
  .then((json) => console.log(json))
