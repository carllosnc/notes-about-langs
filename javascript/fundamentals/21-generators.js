/*
  Generators
  https://javascript.info/generators
*/

{
  function* generateSequence() {
    yield 1
    yield 2
    return 3
  }

  let generator = generateSequence()

  console.log(generator.next().value)
  console.log(generator.next().value)
  console.log(generator.next().value)
}

// generators are iterables
{
  function* generateSequence() {
    yield 1
    yield 2
    yield 3
    return
  }

  let generator = generateSequence()

  for (let value of generator) {
    console.log(value)
  }
}

// destruction
{
  function* generateSequence() {
    yield 1
    yield 2
    yield 3
  }

  let generator = generateSequence()

  console.log([...generator])
}

// using generators for iterables
{
  let range = {
    from: 1,
    to: 5,
    [Symbol.iterator]() {
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
    },
  }

  console.log([...range])
}

// using a generator to make iterable sequences.
{
  function* generateSequence(start, end) {
    for (let i = start; i <= end; i++) {
      yield i
    }
  }

  let sequence = [...generateSequence(1, 5)]

  console.log(sequence)
}

// generator composition
{
  function* generateSequence(start, end) {
    for (let i = start; i <= end; i++) {
      yield i
    }
  }

  function* generatePasscode() {
    yield* generateSequence(48, 57)
    yield* generateSequence(65, 90)
    yield* generateSequence(97, 122)
  }

  let str = ''

  for (let code of generatePasscode()) {
    str += String.fromCharCode(code)
  }

  console.log(str)
}

// "yield is a two-way road"
{
  function* gen() {
    let ask1 = yield '2 + 2?'
    console.log(ask1)
    let ask2 = yield '3 * 3?'
    console.log(ask2)
  }

  let generator = gen()
  console.log(generator.next().value)
  console.log(generator.next(4).value)
  console.log(generator.next(9).done)
}

// generator.throw
{
  function* gen() {
    try {
      let result = yield '2 + 2'
      console.log(
        'The execution does not reach here, because the exception is throw above'
      )
    } catch (e) {
      console.log(`Error - ${e.message}`)
    }
  }

  let generator = gen()
  let question = generator.next().value

  console.log(question)
  generator.throw(new Error('The answer is not found in my database'))
}

// async generator
{
  async function* generateSequence(start, end) {
    for (let i = start; i <= end; i++) {
      // waiting one sec here.
      await new Promise(resolve => setTimeout(resolve, 1000))

      yield i
    }
  }

  ;(async () => {
    let generator = generateSequence(1, 5)

    for await (let value of generator) {
      console.log(value)
    }
  })()
}

// example
{
  function timer(time) {
    return new Promise(resolve => {
      setTimeout(() => {
        resolve(`After ${time}s`)
      }, time * 1000)
    })
  }

  async function* gen() {
    for (let i of [3, 4, 1]) {
      yield await timer(i)
    }
  }

  ;(async () => {
    let elements = gen()

    for await (let value of elements) {
      console.log(value)
    }
  })()
}
