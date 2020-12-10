// Getting a resource
const fetch   = require("node-fetch")
const baseURL = 'https://jsonplaceholder.typicode.com'
const id      = 1

fetch(`${baseURL}/posts/${id}`)
fetch(baseURL+'/posts/1')
  .then(response => response.json())
  .then(json => console.log(json))
