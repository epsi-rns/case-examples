// Deleting a resource
const axios = require('axios').default;
const baseURL  = 'https://jsonplaceholder.typicode.com'
const id    = 1
const url   = `${baseURL}/posts/${id}`

axios.delete(url)
  .catch( error   => console.log(error) )
