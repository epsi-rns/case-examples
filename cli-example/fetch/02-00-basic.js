// Getting a resource
const fetch   = require("node-fetch")
const baseURL = 'https://jsonplaceholder.typicode.com'
const id      = 1

const request = async () => {
  const response = await fetch(`${baseURL}/posts/${id}`)
  const json = await response.json()
  return json
}

request()
  .then(data => console.log(data))
  .catch(reason => console.log(reason.message))
