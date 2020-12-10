// Deleting a resource
const fetch   = require("node-fetch")
const baseURL = 'https://jsonplaceholder.typicode.com'
const id      = 1

fetch(`${baseURL}/posts/${id}`, {
  method: 'DELETE'
})
