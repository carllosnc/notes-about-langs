/*
  Objects
  https://javascript.info/object
*/

// literals and properties
{
  let user = {
    name: 'jonh',
    age: 30,
    'like birds': true,
  }

  console.log(user.name, user.age)
  delete user.age

  console.log(user)
}

// square brackets
{
  let user = {}

  // set
  user['likes birds'] = true

  // get
  console.log(user['likes birds'])

  // delete
  delete user['likes birds']

  console.log(user)
}

// computed properties
{
  const foo = 'foo'
  const bar = 'bar'
  const span = 'span'

  const obj = {
    [foo]: 1,
    [bar]: 2,
    [span]: 3,
  }

  console.log(obj)
}

// property value shorthand
{
  function makeUser(name, age) {
    return {
      name, // same as name: name
      age, // same as age: age
    }
  }

  const jonh = makeUser('jonh', 30)

  console.log(jonh)
}

// existence check
{
  let user = { name: 'jonh', age: 30 }

  console.log('name' in user)
  console.log('foo' in user)
}

// the for...in loop
{
  let user = {
    name: 'jonh',
    age: 30,
    isAdmin: true,
  }

  for (let key in user) {
    console.log(key, '-', user[key])
  }
}

// copying by reference
{
  // primitive values
  let message = 'hello!'
  let phrase = message // copy the value

  message = 'world'

  console.log(phrase === 'hello') // true

  // objects

  let user = { name: 'john' }
  let admin = user // copy the reference

  admin.name = 'jack'
  console.log(user.name === 'jack') // true
}

// const object
{
  const user = {
    name: 'jonh',
  }

  user.name = 'fred'
  user.age = 12

  console.log(user)
}

// cloning and merging, Object.assign
{
  let user = {
    name: 'John',
    age: 30,
  }

  let clone = {}

  // Basic mode
  for (let key in user) {
    clone[key] = user[key]
  }

  clone.name = 'Pete'

  console.log(user.name)
  console.log(clone.name)

  // Object assign
  let another = Object.assign({ lang: 'javascript' }, user)
  console.log(another)

  // Destruction object
  let bob = { ...user, lang: 'php' }
  console.log(bob)
}

// Primitive conversion
{
  // toString / valueOf
  let user = {
    name: 'John',
    money: 1000,

    toString() {
      return `User object!`
    },

    valueOf() {
      return this.money
    },
  }

  console.log(user)
  console.log(+user)
  console.log(user + 500)
  console.log(String(user))
}

// further operations
{
  let obj = {
    toString() {
      return '2'
    },
  }

  console.log(obj * 2) // toPrimitive gives "2", then it becomes 2
  console.log(obj + 2) // 22 (toPrimitive returned string => concatenation)
}

// contructor function
{
  function User(name) {
    this.name = name
    this.isAdmin = false
  }

  let user = new User('Bob')

  console.log(user.name, user.isAdmin)
}

// methods in contructor
{
  function User(name) {
    this.name = name

    this.sayHi = function () {
      console.log(`My name is: ${this.name}`)
    }
  }

  let jonh = new User('John')
  jonh.sayHi()
}

// Object keys, values, entries
{
  const user = {
    name: 'Bob',
    age: 20,
    lang: 'javascript',
    email: 'bob@gmail.com',
  }

  console.log('keys', Object.keys(user))
  console.log('values', Object.values(user))
  console.log('entries', Object.entries(user))
}
