import net from 'node:net'

const HOSTNAME = 'localhost'
const PORT = 3000

net
  .createServer(socket => {
    console.log('Server: client connected')

    socket.on('data', name => {
      // this data will send to the data
      socket.write(`Hello ${name}`)
    })
  })
  .listen(PORT, HOSTNAME)
