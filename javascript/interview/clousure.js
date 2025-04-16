/*
  A clousure occur when a function has access to variables in its outer scope, even after the outer function has returned.
*/

function cache() {
  //can be accessed by the inner scope
  let storage = {}

  //this is a clousure
  return function (key, value) {
    if (storage[key]) {
      return storage[key]
    }

    storage[key] = value
    return storage
  }
}

const c = cache()

console.log(c('a', 1))
console.log(c('b', 2))
console.log(c('c', 3))
console.log(c('d', 4))

console.log(c('a'))
console.log(c('b'))
