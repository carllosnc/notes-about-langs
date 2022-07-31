import test from 'ava'

// What's a curried function
// curried function is a function that takes multiple arguments one at a time.

test('composition: basic example', t => {
  const add = a => b => a + b

  t.is(add(1)(2), 3)
  t.is(add(10)(20), 30)
})

test('composition: compose 2 functions', t => {
  // f . g = f(g(x))

  const compose = (f, g) => x => f(g(x))

  const add1 = x => x + 1
  const add2 = x => x + 2

  const add3 = compose(add1, add2)

  t.is(add3(1), 4)
})

// compose n functions
