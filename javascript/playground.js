function arrayReduce(array, reducer, init) {
  let prev = init

  for (let index = 0; index < array.length; index++) {
    prev = reducer(prev, array[index], index, array)
  }

  return prev
}
