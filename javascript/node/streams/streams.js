/*================================
Streams

https://medium.com/developers-arena/streams-and-buffers-in-nodejs-30ff53edd50f
https://medium.com/edge-coders/node-js-streams-everything-you-need-to-know-c9141306be93
==================================*/

import { createReadStream } from 'fs'

const readStream = createReadStream('./data.txt')

// A buffer is a temporary memory that a stream takes
// to hold some data until it consumed

// nodejs streams extend the EventEmitter class. We can listen to
// event like data and end in streams.

// really need to undestands whats is a strem and how it's work.

readStream.on('data', chunk => {
  console.log('----------------')
  console.log(chunk.toString())
  console.log('----------------')
})

readStream.on('open', () => {
  console.log('Stream opened')
})

readStream.on('end', () => {
  console.log('Stream cloded')
})

readStream.on('', () => {
  console.log('Drain')
})
