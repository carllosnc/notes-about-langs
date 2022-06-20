/*
  MEMOIZE
  https://codeburst.io/understanding-memoization-in-3-minutes-2e58daf33a19

  - Memoization is the programmatic pratice of making long
  recusive/iterative functions run much faster
*/

{
  const memo = (function () {
    let save = []

    return function (value) {
      save.push(value)

      return save
    }
  })()

  console.log(memo(10)) // [ 10 ]
  console.log(memo(20)) // [ 10, 20 ]
  console.log(memo(30)) // [ 10, 20, 30 ]
}

{
  const cachable = (function () {
    let cache = null

    return function (value) {
      if (cache) {
        console.log('Returning cache - ', value)
        return cache
      }

      console.log('Cache off')
      cache = value
      return value
    }
  })()

  cachable(10)
  cachable(10)
}
