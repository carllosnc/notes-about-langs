import fs from 'node:fs'

let data = ''

// create a readable stream
const readerStream = fs.createReadStream(`${process.cwd()}/node/data.txt`)

// setting encoding to be utf8
readerStream.setEncoding('utf8')

// handle stream events -> data, end, and error
readerStream.on('data', function (chunk) {
  data += chunk
  console.log(chunk, '\n')
})

readerStream.on('open', function () {
  console.log('start of task \n')
})

readerStream.on('end', function () {
  console.log('end of task')
})

readerStream.on('error', function (err) {
  console.log(err.stack)
})
