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

test('memoize: cachable calc functions', t => {
  function cachableCalc(fn) {
    const cache = []

    return function (a, b) {
      const inCache = cache.find(item => {
        if (item.a === a && item.b === b) return item
      })

      if (inCache) {
        return `by cache ${inCache.result}`
      }

      const result = fn(a, b)

      cache.push({ a, b, result })

      return result
    }
  }

  const sum = cachableCalc((a, b) => a + b)
  const sub = cachableCalc((a, b) => a - b)

  t.is(sum(10, 10), 20)
  t.is(sum(10, 10), 'by cache 20')

  t.is(sub(10, 10), 0)
  t.is(sub(10, 10), 'by cache 0')
})
