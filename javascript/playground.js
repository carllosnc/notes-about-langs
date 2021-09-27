let myPromise = Promise.resolve("Hello world!")

myPromise
.then(result => {
  return Promise.resolve(result.toUpperCase())
})
.then(result => {
  console.log(result)
})
