// Updating a resource with PATCH
const axios   = require('axios').default;
const headers = { 'Content-type': 'application/json; charset=UTF-8' }
const baseURL = 'https://jsonplaceholder.typicode.com'
const id      = 1
const url     = `${baseURL}/posts/${id}`

const data    = { id: 1, title: 'foo' }

axios.patch(url, data)
  .then( response => console.log(response.data) )
  .catch( error   => console.log(error) )
