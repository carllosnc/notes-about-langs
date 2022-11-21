import { Writable } from 'node:stream'
import { get } from 'node:https'

class CountStream extends Writable {
  count = 0
  matcher = null

  constructor(matchText, options) {
    super()

    this.matcher = new RegExp(matchText, 'ig')
    Writable.call(matchText, options)
  }

  _write(chunk, enconding = 'utf8', callback) {
    let matches = chunk.toString().match(this.matcher)

    if (matches) {
      this.count += matches.length
    }

    callback()
  }

  end() {
    this.emit('total', this.count)
  }
}

let countStream = new CountStream('book')

get('https://www.manning.com/', function (res) {
  res.pipe(countStream)
})

countStream.on('total', function (count) {
  console.log('Total matches: ', count)
})
