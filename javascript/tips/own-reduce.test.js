import test from 'ava'

function arrayReduce(array, reducer, init) {
  let prev = init

  for (let index = 0; index < array.length; index++) {
    prev = reducer(prev, array[index], index, array)
  }

  return prev
}

test('sum all items: should return the same value', t => {
  const values = [1, 2, 3, 4, 5]

  const result_a = arrayReduce(
    values,
    (prev, current) => {
      return prev + current
    },
    0
  )

  const result_b = values.reduce((prev, current) => {
    return prev + current
  }, 0)

  t.deepEqual(result_a, result_b)
})

test('double items: should return the same value', t => {
  const values = [1, 2, 3, 4, 5]

  const result_a = arrayReduce(
    values,
    (prev, current) => {
      return [...prev, current * 2]
    },
    []
  )

  const result_b = values.reduce((prev, current) => {
    return [...prev, current * 2]
  }, [])

  t.deepEqual(result_a, result_b)
})

test('remove duplicated: should return the same result', t => {
  const values = [1, 1, 2, 2, 3, 4, 3, 5, 5, 4, 10]

  const result_a = arrayReduce(
    values,
    (prev, current) => {
      if (!prev.includes(current)) {
        return [...prev, current]
      }
      return prev
    },
    []
  )

  const result_b = values.reduce((prev, current) => {
    if (!prev.includes(current)) {
      return [...prev, current]
    }

    return prev
  }, [])

  t.deepEqual(result_a, result_b)
})
