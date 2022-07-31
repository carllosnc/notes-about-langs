import test from 'ava'

test('memoize: simple example', t => {
  const memo = (function () {
    let save = []

    return function (value) {
      save.push(value)

      return save
    }
  })()

  t.deepEqual(memo(10), [10])
  t.deepEqual(memo(20), [10, 20])
  t.deepEqual(memo(30), [10, 20, 30])
})

test('memoize: cachable function', t => {
  const cachable = (function () {
    let cache = null

    return function (value) {
      if (cache) {
        return `returned by cache: ${cache}`
      }

      cache = value
      return value
    }
  })()

  t.is(cachable(10), 10)
  t.is(cachable(10), 'returned by cache: 10')
})
