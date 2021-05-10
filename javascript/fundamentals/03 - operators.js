/*
  Operators
  https://javascript.info/operators
*/

// unary
{
  let x = 1
  x = -x
  console.log(x)  // -1, unary negation was applied
}

// binary
{
  let x = 1, y = 3
  console.log(y - x) // 2, binary minus substracts values
}

// string concetenation binary +
{
  console.log("1" + 2) // 12
  console.log("1" + "2") // 12
  console.log(2 + 2 + "1") // 41

  // substraction and division
  console.log(2 - "1") // 1
  console.log("6" / "2") // 3

  let s = "my" + " string"
  console.log(s)
}

// numeric conversion unary +
{
  let x = 1
  console.log(+x) // 1

  let y = -1
  console.log(+y) // -

  // converts non-numbers
  console.log(+true) // 1
  console.log(+"") // 0
}

// assignment
{
  let a, b, c

  a = b = c = 2 + 2

  console.log(a)
  console.log(b)
  console.log(c)
}

// remainder
{
  console.log( 5 % 2 ) // 1 is a remainder of 5 divided by 2
  console.log( 8 % 3 ) // 2 is a remainder of 8 divided by 3
  console.log( 6 % 3 ) // 0 is a remainder of 6 divided by 3
}

// exponentiation
{
  console.log( 2 ** 2 ); // 4  (2 * 2)
  console.log( 2 ** 3 ); // 8  (2 * 2 * 2)
  console.log( 2 ** 4 ); // 16 (2 * 2 * 2 * 2)
}

// increment / decrement
{
  // increment
  let x = 2
  x++
  console.log(x)

  // decrement
  let y = 2
  y--
  console.log(y)
}

// modify-in-place
{
  let n = 2
  n += 5
  n *= 2

  console.log(n)
}
