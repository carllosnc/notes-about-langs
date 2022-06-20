/*
  async
  https://javascript.info/callbacks
  https://javascript.info/promise-basics
*/

// callback
{
  const fn = callback => {
    callback()
  }

  fn(() => {
    console.log("it's a simple callback!")
  })
}

// promises
{
  let promise = new Promise(resolve => {
    try {
      setInterval(() => {
        resolve('a value')
      }, 3000)
    } catch (e) {
      reject(new Error('Promise error'))
    }
  })

  promise
    .then(console.log)
    .catch(console.log)
    .finally(() => {
      console.log('Finally the promise')
    })
}

// promise chaining
{
  new Promise((resolve, reject) => {
    setTimeout(() => resolve(1), 1000)
  })
    .then(result => {
      console.log(result)

      return result * 2
    })
    .then(result => {
      console.log(result)

      return result * 2
    })
    .then(result => {
      console.log(result)
    })
}

// Error handle
{
  new Promise((resolve, reject) => {
    throw new Error('Promise error')
  })
    .then(res => {
      console.log(res)
    })
    .catch(err => {
      console.log(err.message)
    })
}

// async / await
{
  const timer = new Promise(resolve => {
    setTimeout(() => {
      resolve('A simple value')
    }, 1000)
  })

  async function fn() {
    const t = await timer
    console.log(t)
    return t
  }

  fn()
}

// Self executing anonynous async function
{
  ;(async function () {
    console.log('Async IFFE')
  })()
}
