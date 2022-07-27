/*
  Comparisons
  https://javascript.info/comparison
*/

// basic
{
  console.log(2 > 1) // true
  console.log(2 == 1) // false
  console.log(2 != 1) // true
}

// string comparison
{
  console.log('Z' > 'A') // true
  console.log('Glow' > 'Glee') // true
  console.log('Bee' > 'Be') // true
}

// comparison of different types
{
  console.log('2' > 1) // true, string "2" becomes a number 2
  console.log('01' === 1) // true, string "01" becomes a number 1
}

{
  console.log(true === 1) // true
  console.log(true === 0) // true
}

// a funny consequence
{
  let a = 0
  console.log(Boolean(a)) // false

  let b = '0'
  console.log(Boolean(b)) // true
}

// Strict equality
{
  // regular equality (==)
  console.log(0 == false) // true
  console.log('' == false) // true

  // strict equality (===)
  console.log(0 === false) // true
  console.log('' === false) // true
}

// Comparison with null and undefined
{
  // for a strict equality check ===
  console.log(null === undefined) // false

  // for a non-strict check ==
  console.log(null == undefined) // true
}

// Strange result: null vs 0
{
  console.log(null > 0) // false
  console.log(null === 0) // false
  console.log(null >= 0) // true
}

// An incomparable undefined

{
  console.log(undefined > 0) // false
  console.log(undefined < 0) // false
  console.log(undefined == 0) // false
}
