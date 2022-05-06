/*
  Classes

  https://www.typescriptlang.org/docs/handbook/classes.html
*/

/*---------------------------------------
  basic class definition
----------------------------------------*/
{
  class Greeter {
    greeting: string

    constructor(message: string) {
      this.greeting = message
    }

    greet() {
      return `hello ${this.greeting}`
    }
  }

  const greeter = new Greeter('World')

  console.log(typeof greeter)
  console.log(greeter instanceof Greeter)
}

/*---------------------------------------
  inheritance
----------------------------------------*/
{
  class Person {
    private name: string
    private age: number

    constructor(name: string, age: number) {
      this.name = name
      this.age = age
    }

    getName() {
      return this.name
    }

    getAge() {
      return this.age
    }
  }

  class Programmer extends Person {
    private lang: string

    constructor(name: string, age: number, lang: string) {
      super(name, age)
      this.lang = lang
    }

    getLang() {
      return this.lang
    }
  }

  let bob = new Programmer('Bob', 25, 'typescript')

  console.log(bob)
  console.log(bob instanceof Programmer)
  console.log(bob instanceof Person)
}

/*---------------------------------------
  overloads
----------------------------------------*/
{
  class Foo {
    method() {
      return 'foo method'
    }
  }

  class Bar extends Foo {
    method() {
      return ' overrided by Bar'
    }
  }

  let bar = new Bar()
  console.log(bar.method())
}

/*---------------------------------------
  acessors getters and setters
----------------------------------------*/
{
  class Person {
    private _name: string

    constructor(name: string) {
      this._name = name
    }

    get name(): string {
      return this._name
    }

    set name(newName: string) {
      this._name = newName
    }
  }

  let john = new Person('john')
  console.log(john.name)
  john.name = 'John Doe'
  console.log(john.name)
}

/*---------------------------------------
  public, private, and protected modifiers
----------------------------------------*/
{
  class Person {
    private _name: string
    public lastName: string
    protected age: number

    constructor(name: string, lastName: string, age: number) {
      this._name = name
      this.lastName = lastName
      this.age = age
    }
  }

  class Programmer extends Person {
    constructor(name: string, lastName: string, age: number) {
      super(name, lastName, age)
    }

    getAge() {
      return this.age
    }
  }

  let bob = new Programmer('John', 'Doe', 25)
  console.log(bob.getAge())
}

/*---------------------------------------
  read only modifier
----------------------------------------*/
{
  class Octopus {
    readonly name: string
    readonly numberOfLegs: number = 8

    constructor(name: string) {
      this.name = name
    }
  }

  let oct = new Octopus('Dr. Octopus')
  //oct.name = "Mr. Octopucs" - Erro! this is ready only
  //oct.numberOfLegs = 6 - Erro! this is ready only
}

/*---------------------------------------
  static properties
----------------------------------------*/
{
  class Foo {
    static propertie: string = 'class propertie'
    static method(): string {
      return 'method propertie'
    }
  }

  console.log(Foo.propertie)
  console.log(Foo.method())
}

/*---------------------------------------
  abstract classes
----------------------------------------*/
{
  abstract class Animal {
    abstract makeSound(): void

    move(): void {
      console.log('Roaming the earth')
    }
  }

  class Cat extends Animal {
    makeSound() {
      console.log('Meow!')
    }
  }

  class Dog extends Animal {
    makeSound() {
      console.log('Auu! Auu!')
    }
  }

  let cat = new Cat()
  let dog = new Dog()

  cat.makeSound()
  dog.makeSound()
}
