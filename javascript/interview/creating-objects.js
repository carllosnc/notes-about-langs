{
  //object literal
  let object = {
    name: 'John',
    age: 30,
  }
}

{
  //object contructor
  let object = new Object()
}

{
  //object create
  let object = Object.create(null)

  let vehicle = {
    wheels: '4',
    fuelType: 'gasoline',
    color: 'green',
  }

  let carProps = {
    type: {
      value: 'Wolkswagen',
    },
    model: {
      value: 'Golf',
    },
  }

  let car = Object.create(vehicle, carProps)
  console.log(car)
}

{
  //function contructor

  function Person(name) {
    this.name = name
    this.age = 30
  }

  let object = new Person('John')
}

{
  //function constructor with prototype

  function Person() {}
  Person.prototype.name = 'John'
  Person.prototype.age = 30

  let object = new Person()

  console.log(object)
}

{
  //singleton pattern

  let object = new (function () {
    this.name = 'John'
  })()

  console.log(object)
}
