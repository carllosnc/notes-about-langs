import fs from 'node:fs'
import path from 'node:path'

const filepath = path.join(process.cwd(), 'data.txt')

fs.readFile(filepath, 'utf8', (err, contents) => {
  if (err) {
    return console.error(err)
  }

  const upperContents = contents.toUpperCase()

  setTimeout(() => {
    console.log('File contents: ', contents)
    updateFile(filepath, upperContents)
  }, 2000)
})

function updateFile(filepath, contents) {
  fs.writeFile(filepath, contents, err => {
    if (err) throw err
    console.log('File updated')
  })
}

setInterval(() => {
  process.stdout.write('**** \n')
}, 300)
