// Listing all resources
const fetch   = require("node-fetch")
const baseURL = 'https://jsonplaceholder.typicode.com'

fetch(`${baseURL}/posts`)
  .then(response => response.json())
  .then(json => console.log(json))
