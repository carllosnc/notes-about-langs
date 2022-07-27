/*
  Iterables
  https://javascript.info/iterable

  Iterable objects is a generalization of arrays. That's
  a concept that allows to make any object useable in a
  for..of loop
*/

// Symbol.iterator

{
  let range = {
    from: 1,
    to: 5,
  }

  range[Symbol.iterator] = function () {
    return {
      current: this.from,
      last: this.to,
      next() {
        if (this.current <= this.last) {
          return { done: false, value: this.current++ }
        } else {
          return { done: true }
        }
      },
    }
  }

  for (let num of range) {
    console.log(num)
  }
}

// string is iterable
{
  for (let char of 'Hello world!') {
    console.log(char)
  }
}

// calling an iterator explicity
{
  let str = 'Hello world!'

  let iterator = str[Symbol.iterator]()

  while (true) {
    let result = iterator.next()
    if (result.done) break
    console.log(result.value)
  }
}

// Iterables and array-likes
// iterables are objects that implement the Symbol.iterator methos, as described above
// array-likes are objects that have indexes and length, so they look like arrays
{
  let arrayLike = {
    // has indexes and length = array-like
    0: 'Hello',
    1: 'World',
    length: 2,
  }

  // error (no Symbol.iterator)

  try {
    for (let item of arrayLike) {
    }
  } catch (e) {
    console.log(e.message)
  }
}

// Array.from
{
  let arrayLike = {
    0: 'Hello',
    1: 'World',
    length: 2,
  }

  let arr = Array.from(arrayLike)

  console.log(arr)
  console.log(arr.pop()) // method works
}
