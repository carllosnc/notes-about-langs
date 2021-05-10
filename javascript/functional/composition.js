// What's a curried function
// curried function is a function that takes multiple arguments one at a time.

{
  const add = a => b => a + b

  const result = add(1)(2)
  console.log(result) //3
}

// Composition
{
  // f . g = f(g(x))
  const compose = (f, g) => x => f(g(x))

  const add1 = x => x + 1
  const add2 = x => x + 2

  add3 = compose(add1, add2)

  console.log(add3(1)) //4
}
