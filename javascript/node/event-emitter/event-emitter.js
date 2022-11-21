import { EventEmitter } from 'node:events'

// EventEmitter is a class that help us create a publisher-subscriber
// pattern in Nodejs

// new event emitter
const eventEmitter = new EventEmitter()

eventEmitter.on('foo', function () {
  console.log('foo action')
})

// emmiting an event here, too much simple

eventEmitter.on('bar', function () {
  console.log('bar action')
})

eventEmitter.emit('foo')
eventEmitter.emit('bar')

// eventEmitter instance should be singleton for a single event name
