import fs from 'node:fs'

const file = './data.txt'

fs.watchFile(file, (current, previous) => {
  console.log(`${file} updated ${current.mtime}`)
})
