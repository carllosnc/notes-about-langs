import http from 'http'

http
  .createServer((request, response) => {
    response.setHeader('Content-Type', 'application/json')

    if (request.method === 'POST' && request.url === '/echo') {
      let body = []

      request
        .on('data', chunk => {
          body.push(chunk)
        })
        .on('end', () => {
          body = Buffer.concat(body).toString()

          response.end(body)
        })
    } else {
      response.statusCode = 400
      response.write(
        JSON.stringify({
          status: 400,
          message: 'resource not found',
        })
      )
      response.end()
    }
  })
  .listen(8080)

console.log('http://localhost:8080')
