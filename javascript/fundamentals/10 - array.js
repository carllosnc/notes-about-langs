/*
  Arrays
  https://javascript.info/array
*/

// declaration
{
  let x = new Array()
  let y = []

  let fruits = ["Apple", "Orange", "Plum"]
}

// loops
{
  let fruits = [ "Apple", "Orange", "Pear"]

  for(let i = 0; i < fruits.length; i ++ ){
    console.log(fruits[i])
  }

  // for...of
  for(let fruit of fruits){
    console.log(fruit)
  }

  // for...in (Because array are thecnically objects)
  for(let key in fruits){
    console.log(fruits[key])
  }
}

// add / remove items

// arr.push(...items) – adds items to the end,
// arr.pop() – extracts an item from the end,
// arr.shift() – extracts an item from the beginning,
// arr.unshift(...items) – adds items to the beginning.

// forEach
{
  let arr = [1, 2, 3]
  arr.forEach(item => {
    console.log(item)
  })
}

// map
{
  let arr = [1, 2, 3]
  let newArr = arr.map(item => item * 2)

  console.log(newArr)
}

// filter
{
  let arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  let newArr = arr.filter(item => item >= 5)

  console.log(newArr)
}

// reduce
{
  let arr = [1, 2, 3, 4, 5]

  let newArr = arr.reduce((previous, next) => {
    return previous + next
  }, 0)

  console.log(newArr)
}

// slice
{
  let str = "test"
  let arr = Array.from(str)

  console.log(str.slice(1, 3)) // es
  console.log(arr.slice(1, 3)) // [e, s]

  console.log(str.slice(-2)) // st
  console.log(arr.slice(-2)) // [s,t]
}

// concat - join the array with other arrays and/or items
{
  let x = [1, 2, 3]
  let y = [4, 5, 6]

  let z = x.concat(y)

  console.log(z)
}
