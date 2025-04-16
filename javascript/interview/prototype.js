function Animal(name) {
  this.name = name
}

Animal.prototype.say = function () {
  console.log(this.name)
}

function Dog(name) {
  Animal.call(this, name)
}

Dog.prototype = Object.create(Animal.prototype)
Dog.prototype.constructor = Dog
