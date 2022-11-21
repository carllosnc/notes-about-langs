import http from 'http'

const app = {
  server: http.createServer(),

  listen(port, callback) {
    this.server.listen(port)
    callback()
  },

  defaultHeaders(res) {
    res.setHeader('X-Powered-By', 'Carlos Costa')
    res.setHeader('Content-Type', 'application/json')
  },

  notFound(req, res) {
    res.statusCode = 400
    res.end(
      JSON.stringify({
        error: 400,
        message: 'resource not found',
      })
    )
  },

  get(path, callback) {
    this.server.on('request', (req, res) => {
      const { headers, url, method } = req

      this.defaultHeaders(res)

      if (url === path) {
        callback(req, res)
      } else {
        this.notFound(req, res)
      }
    })
  },
}

app.listen(8080, function () {
  console.log('Server at: http://localhost:8080')
})

app.get('/', (req, res) => {
  res.end(
    JSON.stringify({
      message: 'hello world!',
    })
  )
})
