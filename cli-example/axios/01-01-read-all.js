// Listing all resources
const axios   = require('axios').default;
const baseURL = 'https://jsonplaceholder.typicode.com'
const url     = `${baseURL}/posts`

axios.get(url)
  .then( response => console.log(response.data) )
  .catch( error   => console.log(error) )
