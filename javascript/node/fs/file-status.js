import fs from 'node:fs'

let file = process.argv[2]

function printMetadata(file) {
  try {
    const fileStatus = fs.statSync(file)
    const fileAcess = fs.accessSync(`${process.cwd()}/${file}`)

    console.log(fileStatus)
    console.log(fileAcess)
  } catch (error) {
    console.log('Error reading file path:', file)
  }
}

printMetadata(file)
