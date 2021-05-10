/*
  Functions
  https://javascript.info/switch
*/

// declaration
{
  function showMessage(){
    console.log('Hello world!')
  }

  showMessage()
}

// local and global variables
{
  // outer variables
  let world = 'world'

  function showMessage(){
    let message = 'Hello' + world

    console.log(message)
  }

  showMessage()
}

// parameters
{
  function showMessage(from, text){
    console.log(from, text)
  }

  showMessage('Bob: ', 'Hello world')
}

// default values
{
  function showMessage(from, text = 'hello world'){
    console.log(from, text)
  }

  showMessage('Bob:')
}

// returning a value
{
  function sum(a, b){
    return a + b
  }

  console.log(sum(1, 2))

  // a function with an empty return or without it returns undefined
  // never add a newline between return and the value
  function doNothing(){}
  console.log(doNothing() === undefined)
}

// function expressions and arrows
{
  function sayHello(){
    console.log('hello!')
  }

  let sayHi = function(){
    console.log('hi!')
  }

  let copy = sayHi

  sayHello()
  sayHi()
  copy()
}

// callback function
{
  function func(callback){
    callback('a simple callback')
  }

  func(function(arg){
    console.log(arg)
  })
}

// function expression x function declaration
{
  // function declaration
  function sum1(a, b){
    return a + b
  }

  let sum2 = function(a, b){
    return a + b
  }
}

// arrow functions
{
  let sum = (a, b) => a + b
  console.log(sum(1, 2))

  // multiline
  let add = (a, b) => {
    return a + b
  }

  console.log(add(1, 2))
}

// Self executing anonynous function
{
  (function(arg){
    console.log(arg)
  })('Hello world')
}
