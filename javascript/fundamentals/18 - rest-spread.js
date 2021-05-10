/*
  Rest parameters and spread operator
  https://javascript.info/recursion
*/

// rest parameters
{
  function sumAll(...args){
    let sum = 0

    for(let arg of args) sum += arg

    return sum
  }

  console.log(sumAll(1)) // 1
  console.log(sumAll(1, 2)) // 2
  console.log(sumAll(1, 2, 3)) // 3
}

// the argument variable
{
  function fn(){
    console.log(arguments.length)
    console.log(arguments[0])
    console.log(arguments[1])
  }

  fn("Julius", "Caesar")
  fn("Ilya")
}

// Arrow functions do not have "Arguments"
{
  const fn = () => {
    console.log(arguments)
  }

  fn(1, 2, 3)
}

// Spread operator
{
  const values = [1, 2, 3]
  console.log(Math.max(...values))
  console.log(..."Hello world")
}
