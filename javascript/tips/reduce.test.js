import test from 'ava'

// using reducer like a map
test('reduce like a map', t => {
  const result = [1, 2, 3, 4].reduce((prev, current, index, arr) => {
    arr[index] = arr[index] * 2

    return arr
  }, 0)

  t.deepEqual(result, [2, 4, 6, 8])
})

// using reducer like a filter
test('reduce like a fitler', t => {
  const result = [1, 2, 3, 4].reduce((prev, current, index, arr) => {
    if (current > 2) {
      arr.splice(arr.indexOf(current))
    }

    return arr
  }, 0)

  t.deepEqual(result, [1, 2])
})

// calculate the sum of values in an array
test('reduce to sum values of and array', t => {
  const result = [1, 2, 3, 4].reduce((prev, current) => {
    return prev + current
  }, 0)

  t.is(result, 10)
})
