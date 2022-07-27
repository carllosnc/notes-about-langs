/*
  Recursion and stack
  https://javascript.info/recursion
*/

// two ways of thinking
{
  // first
  function pow1(x, n) {
    let result = 1

    for (let i = 0; i < n; i++) {
      result *= x
    }

    return result
  }

  console.log(pow1(2, 3)) // 8

  // second (recursion)
  function pow2(x, n) {
    if (n == 1) return x

    return x * pow2(x, n - 1)
  }

  console.log(pow2(2, 3)) // 8
}

// Loop method
{
  function loop(start, end, action) {
    if (start === end) {
      return false
    }

    if (start > end) loop(start - 1, end, action)
    if (start < end) loop(start + 1, end, action)

    action(start)
  }

  loop(0, 3, index => {
    console.log(index)
  })
}
