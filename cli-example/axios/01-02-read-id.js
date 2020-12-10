// Listing first post
const axios   = require('axios').default;
const baseURL = 'https://jsonplaceholder.typicode.com'
const id      = 1
const url     = `${baseURL}/posts/${id}`

axios.get(url)
  .then( response => console.log(response.data) )
  .catch( error   => console.log(error) )
