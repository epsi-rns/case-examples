// Deleting a resource
const fetch   = require("node-fetch")
const headers = { 'Content-type': 'application/json; charset=UTF-8' }
const baseURL = 'https://jsonplaceholder.typicode.com'
const id      = 1

const options = {
  method: 'DELETE'
}

const request = async () => {
  try {
    const response = await fetch(`${baseURL}/posts/${id}`, options)
    const json = await response.json()
  } catch(err) {
    console.log(err.message)
  }
}

request()
