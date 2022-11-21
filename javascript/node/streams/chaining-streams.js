import fs from 'node:fs'
import zlib from 'node:zlib'

// passing actions to the pipe, to much simple
fs.createReadStream(`${process.cwd()}/node/data.txt`)
  .pipe(zlib.createGzip())
  .pipe(fs.createWriteStream(`${process.cwd()}/node/streams/input.txt.gz`))

console.log('file compressed')
