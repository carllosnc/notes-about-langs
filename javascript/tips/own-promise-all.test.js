import test from 'ava'

function promiseAll(promises) {
  return new Promise((resolve, reject) => {
    if (!promises) {
      reject('need array of promises')
    }

    const items = []

    promises.map(promise => {
      promise
        .then(item => {
          items.push(item)
        })
        .catch(() => {
          reject()
        })
        .finally(() => {
          resolve(items)
        })
    })
  })
}

test('promiseAll: a simple example without timers', async t => {
  const result = await promiseAll([
    Promise.resolve('foo'),
    Promise.resolve('bar'),
    Promise.resolve('span'),
  ])

  t.deepEqual(result, ['foo', 'bar', 'span'])
})

test('promiseAll: should thrown an error when the main argument is not passed', async t => {
  try {
    await promiseAll()
  } catch (error) {
    t.is(error, 'need array of promises')
  }
})
