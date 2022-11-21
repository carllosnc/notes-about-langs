import test from 'ava'

test('recursion', t => {
  function loop(init, end, action) {
    // condition to end loop
    if (init >= end) {
      return true
    }

    action(init)

    loop(init + 1, end, action)
  }

  let count = 0

  loop(0, 10, index => {
    count++
  })

  t.is(count, 10)
})
