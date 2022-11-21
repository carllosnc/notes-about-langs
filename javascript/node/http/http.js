import http from 'http'

http
  .createServer((request, response) => {
    const { headers, method, url } = request

    let body = []

    request
      .on('error', err => {
        console.error(err)
      })
      .on('data', chunk => {
        console.log(chunk.toString())

        body.push(chunk)
      })
      .on('end', () => {
        body = Buffer.concat(body).toString()
      })

    response.statusCode = 200
    response.setHeader('Content-Type', 'application/json')
    response.setHeader('X-Powered-By', 'Carlos Costa')

    const responseBody = { headers, method, url, body }

    response.end(JSON.stringify(responseBody))
  })
  .listen(8080)

console.log('Server at: http://localhost:8080')
