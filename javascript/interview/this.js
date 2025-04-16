/*
  the this keyword refers to the object that is executing
  the current function or method. It allow access to object
  properties and methods within the context of the object.
*/

const person = {
  name: 'carll',
  greet: function () {
    console.log(`Hello, my name is ${this.name}`)
  },
}

person.greet()
