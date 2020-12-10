// Creating a resource
const axios   = require('axios').default;
const headers = { 'Content-type': 'application/json; charset=UTF-8' }
const baseURL = 'https://jsonplaceholder.typicode.com'
const url     = `${baseURL}/posts`

const data    = { title: 'foo', body: 'bar',  userId: 1 }

axios.post(url, data)
  .then( response => console.log(response.data) )
  .catch( error   => console.log(error) )
