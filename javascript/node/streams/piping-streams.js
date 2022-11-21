import fs from 'node:fs'

const readerStream = fs.createReadStream(`${process.cwd()}/node/data.txt`)
const writeStream = fs.createWriteStream(
  `${process.cwd()}/node/streams/output.txt`
)

readerStream.pipe(writeStream)

console.log('Program Ended')
