/*
Type Compatibility

https://www.typescriptlang.org/docs/handbook/type-compatibility.html
*/

/*---------------------------------------
  basic compatibility
----------------------------------------*/
{
  interface Named {
    name: string
  }

  class Person {
    name: string

    constructor(name: string) {
      this.name = name
    }
  }

  let p: Named
  p = new Person('Bob')

  console.log(p instanceof Person)
}

/*---------------------------------------
  starting out
----------------------------------------*/
{
  interface Named {
    name: string
  }

  let x: Named
  let y = { name: 'Alice', location: 'Seatle' }

  x = y
}

/*---------------------------------------
  comparing two functions
----------------------------------------*/
{
  let x = (a: number) => 0
  let y = (b: number, s: string) => 0

  y = x
  // x = y - Error
}

/*---------------------------------------
  enum
----------------------------------------*/
{
  enum Status {
    Ready,
    Waiting,
  }
  enum Color {
    Red,
    Blue,
    Green,
  }

  let status = Status.Ready
  //status = Color.Green - error
}

/*---------------------------------------
  classes
----------------------------------------*/
{
  class Animal {
    feet: number = 10
    constructor(name: string, numFeet: number) {}
  }

  class Size {
    feet: number = 10
    constructor(numFeet: number) {}
  }

  let a: Animal = new Animal('foo', 10)
  let s: Size = new Size(10)

  a = s // ok
  s = a // ok
}

/*---------------------------------------
  generics
----------------------------------------*/
{
  interface Empty<T> {}

  let x: Empty<number> = 10
  let y: Empty<string> = '10'

  x = y // Ok, because y matches structure of x
}
