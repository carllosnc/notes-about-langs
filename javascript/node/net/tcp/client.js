import net from 'node:net'

const HOSTNAME = 'localhost'
const PORT = 3000

const socket = net.connect(PORT, HOSTNAME)
socket.write('The client')

socket.on('data', data => {
  console.log('Client: ', data.toString())
})
