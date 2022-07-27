/*
  TYPES
  https://javascript.info/variables
  https://javascript.info/primitives-methods
  https://javascript.info/number
  https://javascript.info/string
*/

// basic types
{
  let a = 10 // int
  let b = '10' // string
  let c = 10.0 // float
  let d = false // boolean
  let e = {} // symbol
  let f = [] // array
  let g = undefined // undefined
  let h = null // null
  let i = Infinity // infinity
  let j = NaN // not a number
}

// typeof operator
{
  let foo = 'hello'
  let bar = 100
  let span = 10.0
  let fizz = []
  let dex = {}
  let hey = function () {}

  console.log(typeof foo) // string
  console.log(typeof bar) // number
  console.log(typeof span) // number
  console.log(typeof fizz) // object
  console.log(typeof dex) // object
  console.log(typeof hey) // function
}

// type conversion to string
{
  let value = true
  console.log(typeof value) // boolean

  value = String(value) // now value is a string "true"
  console.log(typeof value) // string
}

// type conversion to number
{
  console.log('6' / '2') // 3 string are converted to numbers

  let str = '123'
  console.log(typeof str) // string

  let num = Number(str) // become a number 123
  console.log(typeof num)
}

// type conversion to boolean
{
  let fn = function () {}

  // true types
  console.log(Boolean(1))
  console.log(Boolean(-1))
  console.log(Boolean(0.1))
  console.log(Boolean('0'))
  console.log(Boolean('foo'))
  console.log(Boolean(true))
  console.log(Boolean({}))
  console.log(Boolean([]))
  console.log(Boolean(() => {}))
  console.log(Boolean(fn))
  console.log(Boolean(Infinity))

  // false types
  console.log(Boolean(0))
  console.log(Boolean(false))
  console.log(Boolean(undefined))
  console.log(Boolean(null))
  console.log(Boolean(NaN))
  console.log(Boolean(''))
  console.log(Boolean([].length))
}

// In javascript there are 6 primitive types
{
  // string
  // number
  // boolean
  // symbol
  // null
  // undefined
}

// Simple object
{
  let john = {
    name: 'john',
    sayHi: function () {
      console.log('hi buddy')
    },
  }

  john.sayHi()

  let str = 'Hello' // primitive

  console.log(str.toUpperCase()) // object
}

// Constructors String/Number/Boolean are for internal use only
{
  let x = 0 // number (primitive)
  let y = new Number(0) // object

  console.log(typeof x) // number
  console.log(typeof y) // object

  if (x) {
    // 0 is false
  }

  if (y) {
    // 0 is true
  }

  console.log(y + 10) // 10
}

// null/undefined have no methods
{
  let x = undefined
  let y = null
}
