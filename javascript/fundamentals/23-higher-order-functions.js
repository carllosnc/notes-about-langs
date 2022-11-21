/*
  Higher-order functions are a functional programming pattern
  when functions are being passed as arguments to other functions
  or returned as a result.
*/

// functions as argument
{
  function fn(callback) {
    callback()
  }

  fn(() => {
    console.log('hello world!')
  })
}

// returning a function
{
  function fn() {
    return function () {
      console.log('hello world!')
    }
  }

  const fn1 = fn()
  fn1()
}

// array of function
{
  function fn() {
    function hello() {
      return 'hello'
    }

    function world() {
      return 'world'
    }

    return [hello, world]
  }

  fn().forEach(fn => {
    console.log(fn())
  })
}
