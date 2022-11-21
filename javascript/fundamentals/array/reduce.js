// sum
{
  const result = [1, 2, 3, 4, 5].reduce((prev, current, index, arr) => {
    return prev + current
  }, 0)

  // console.log('Sum', result)
}

// map
{
  const result = [1, 2, 3, 4, 5].reduce((prev, current, index, arr) => {
    return [...prev, current * 2]
  }, [])

  // console.log('Map', result)
}

// filter
{
  const result = [1, 2, 3, 4, 5].reduce((prev, current, index, arr) => {
    if (current % 2 === 0) {
      return [...prev, current]
    }

    return prev
  }, [])

  // console.log('filter', result)
}

// at
{
  const result = [1, 2, 3, 4, 5].reduce((prev, current, index, arr) => {
    return arr[2]
  }, 0)

  // console.log(result)
}

// remove duplicates
{
  function arrayIncludes(arr, item) {
    for (let element of arr) {
      if (element === item) {
        return true
      }
    }

    return false
  }

  const result = [1, 1, 2, 2, 3, 4, 3, 5, 5, 4, 10].reduce(
    (prev, current, index, arr) => {
      if (!arrayIncludes(prev, current)) {
        return [...prev, current]
      }

      return prev
    },
    []
  )

  console.log(result)
}
