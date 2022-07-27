/*
  Logical operators
  https://javascript.info/logical-operators
*/

// ||(OR)
{
  // booleans
  console.log(true || false) // true
  console.log(true || true) // true
  console.log(false || true) // true
  console.log(false || false) // false

  // numbers
  if (1 || 0) {
    console.log(true) // true
  }

  // multiple conditions
  let hour = 12
  let isWeekend = true

  if (hour < 10 || hour > 18 || isWeekend) {
    console.log('The office is closed')
  }

  //OR finds the first truthy value
  console.log(1 || 0) // (1 is truthy)
  console.log(true || 'no matter what') // (true is truthy)
  console.log(null || 1) // 1 (1 is the first truthy value)
  console.log(null || 0 || 1) // 1 (1 is the first truthy value)
  console.log(undefined || null || 0) // 0 (all falsy, return  the last value)

  //short circuit evaluation
  let x

  true || (x = 1)
  console.log(x) // undefined, because(x = 1) not evaluated

  false || (x = 1)
  console.log(x) // 1
}

// && (AND)
{
  console.log(true && true) // true
  console.log(true && false) // false
  console.log(false && true) // false
  console.log(false && false) // false

  //(AND) finds the first falsy value

  // if the first operand is truthy
  // AND return the second operand
  console.log(1 && 0) // 0
  console.log(1 && 5) // 5

  // if the first operand is falsy
  // AND returns it. The second operand is ignored
  console.log(null)

  console.log(1 && 2 && null && 3) // null
  console.log(1 && 2 && 3) // 3, the last one

  // just like OR, the AND && operator can sometimes replace if
  let x = 1
  x > 0 && console.log('Greater than zero!')
}

// !(NOT)
{
  console.log(!true) // false
  console.log(!0) // true
  console.log(!null) // true
  console.log(!'') // true
  console.log(!NaN) // true

  // a double not !! is sometimes used for converting a value to bolean type
  console.log(!!'non-empty string') // true
  console.log(!!null) // false
  console.log(!!0) // false
  console.log(!!1) // true
}
