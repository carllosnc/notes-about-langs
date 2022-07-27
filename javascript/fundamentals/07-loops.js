/*
  Loops: while and for
  https://javascript.info/logical-operators
*/

// the "while" loop
{
  console.log('The while loop')

  let i = 1
  while (i <= 3) {
    console.log(i) // 1 - 2 - 3
    i++
  }

  // curly braces are not required for a single-line body
  let j = 3
  while (j) console.log(j--)
}

// the "do...while loop"
{
  console.log('do...while loop')

  let i = 0
  do {
    console.log(i)
    i++
  } while (i < 3)
}

// the for loop
{
  console.log('The for loop')

  for (let i = 0; i < 3; i++) {
    console.log(i)
  }

  // inline variable declaration
  let j = 0
  for (j = 0; j < 3; j++) {
    console.log(j)
  }

  console.log(j)

  // skiping parts
  let k = 0
  for (; k < 3; ) {
    console.log(k++)
  }
}

// Breaking the loop
{
  console.log('Breaking the lopp ...')

  let i = 0
  while (true) {
    console.log(i)
    if (i === 3) {
      break
    }
    i++
  }
}

// Continue to the next iteration
{
  console.log('Continue to the next iteration')

  for (let i = 0; i < 10; i++) {
    if (i % 2 == 0) continue
    console.log(i)
  }

  // same result
  for (let i = 0; i < 10; i++) {
    if (i % 2) {
      console.log(i)
    }
  }
}

//  No Break/continue to the right side of "?"
{
  console.log('No Break/continue to the right side of /?/')

  let i = 0

  if (i > 5) {
    alert(i)
  } else {
    // continue
  }

  //(i > 5) ? alert(i) : continue; // continue isn"t allowed here
}

// labels for break/continue
{
  first: for (let i = 0; i < 3; i++) {
    for (let j = 0; j < 3; j++) {
      if (i === 2) break first
      console.log(i, j)
    }
  }
}
