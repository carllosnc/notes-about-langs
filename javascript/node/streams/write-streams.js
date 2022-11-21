import fs from 'node:fs'
let data = 'Simply easy learning'

// create a writable stream
const writeStream = fs.createWriteStream(
  `${process.cwd()}/node/streams/output.txt`
)

// write the data to stream with encoding to be utf8
writeStream.write(data, 'utf8')

// mark the end of file
writeStream.end()

// handle stream events -> finish, and error
writeStream.on('finish', function () {
  console.log('write complete!')
})

writeStream.on('error', function (err) {
  console.log(err.stack)
})

console.log('program end')
