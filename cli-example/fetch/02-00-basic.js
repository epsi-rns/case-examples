// Listing all resources
const fetch   = require("node-fetch")
const baseURL = 'https://jsonplaceholder.typicode.com'

const request = async () => {
  const response = await fetch(`${baseURL}/posts`)
  const json = await response.json()
  return json
}

request()
  .then(data => console.log(data))
  .catch(reason => console.log(reason.message))
