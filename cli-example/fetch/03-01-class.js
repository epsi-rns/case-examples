const fetch = require("node-fetch")

class PlaceHolder {
  constructor() {
    this.baseURL = 'https://jsonplaceholder.typicode.com'
    this.headers = { 'Content-type': 'application/json; charset=UTF-8' }
  }

  // Private Method (using # at tc39)
  _show(json) {
    console.log(json)
  }
  
  async _request(url, options = null) {
    try {
      const response = options === null ?
        await fetch(url) : await fetch(url, options)
      const json = await response.json()
      this._show(json)
    } catch(err) {
      console.log(err.message)
    }
  }

  // Public Method
  readAll() {
    this._request(`${this.baseURL}/posts`)
  }

  read(id) {
    this._request(`${this.baseURL}/posts/${id}`)
  }

  create(body) {
    const options = {
      method: 'POST',
      body: JSON.stringify(body),
      headers: this.headers
    }
    this._request(`${this.baseURL}/posts`, options)
  }

  update(id, body) {
    const options = {
      method: 'PUT',
      body: JSON.stringify(body),
      headers: this.headers
    }
    this._request(`${this.baseURL}/posts/${id}`, options)
  }

  patch(id, body) {
    const options = {
      method: 'PATCH',
      body: JSON.stringify(body),
      headers: this.headers
    }
    this._request(`${this.baseURL}/posts/${id}`, options)
  }

  async delete(id) {
    try {
      const url = `${this.baseURL}/posts/${id}`
      const response = await fetch(url, { method: 'DELETE' })
      const json = await response.json()
    } catch(err) {
      console.log(err.message)
    }
  }
}

/* Example Usage */

const placeholder = new PlaceHolder();

// 1: Listing all resources
// placeholder.readAll()

// 2: Listing first body
// placeholder.read(1)

// 3: Creating a resource
// const body = { title: 'foo', body: 'bar',  userId: 1 }
// placeholder.create(body)

// 4: Updating a resource with PUT
//const body = { id: 1, title: 'foo', body: 'bar',  userId: 1 }
//placeholder.update(1, body)

// 5: Updating a resource with PATCH
// const body = { id: 1, title: 'foo' }
// placeholder.patch(1, body)

// 6: Deleting a resource
// placeholder.delete(1)
