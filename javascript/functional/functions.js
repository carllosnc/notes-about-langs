// https://flaviocopes.com/javascript-functional-programming/

// First class functions

// in a functional programing language, functions are first citizens
{
  const fn = m => console.log(m)
  fn("hello world!")
}

// since a function is assignable to a variable, they can be added to objects
{
  const obj = {
    fn1(m){
      console.log(m)
    },
    fn2(m){
      console.log(m)
    }
  }

  obj.fn1("Hello world!")
  obj.fn2("Hello world!")
}

// as well as to arrays
{
  const fn = [
    m => console.log(m)
  ]

  fn[0]("hello world!")
}

// they can be used as an argument to other functions
{
  const fn1 = (m) => () => console.log(m)
  const fn2 = (fn3) => fn3()
  fn2(fn1("hello world!"))
}

// they can be returned by function
{
  const createFn = () => {
    return (m) => console.log(m)
  }

  const fn = createFn()
  fn("hello world!")
}

// Hight order functions
// Functions that accept functions as arguments or return functions are called
// hight order functions
{
  function fn(callback){
    return arg => callback(arg)
  }

  const result = fn(() => {
    return "hello world!"
  })

  console.log(result())
}
