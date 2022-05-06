function makePromise(timer){
  return new Promise((resolve) => {
    setTimeout(() => {
      resolve(`after ${timer} seconds`)
    }, timer * 1000);
  })
}

makePromise(3)
.then((value) => {
  console.log(value)
})

console.log('Hello world!')
