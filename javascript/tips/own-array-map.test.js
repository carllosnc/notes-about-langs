import test from 'ava'

function map(arr, callback) {
  let result = [...arr]

  if (!callback) {
    throw new Error('need a callback')
  }

  for (let index = 0; index < arr.length; index++) {
    result[index] = callback(arr[index], index, arr)
  }

  return result
}

function doubleValues(item, index, arr) {
  return item * 2
}

function add10(item, index, arr) {
  return item * 10
}

test('own array map', t => {
  const items = [1, 2, 3]

  try {
    map(items)
  } catch (error) {
    t.is(error.message, 'need a callback')
  }

  t.deepEqual(map(items, doubleValues), items.map(doubleValues))
  t.deepEqual(map(items, add10), items.map(add10))
})
