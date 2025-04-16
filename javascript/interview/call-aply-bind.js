{
  /*
    call, apply and bind are function methods that allow
    you to call a function with a specific context.
  */

  let car = {
    type: 'Wolkswagen',
    model: 'Golf',
    color: 'green',
  }

  function describeCar() {
    return `this car is a ${this.type} with ${this.color} color and ${this.model} model`
  }

  //invokes a function with a specific context
  console.log(describeCar.call(car))

  //invokes a function with a specific context and accepts a list of arguments as an array
  console.log(describeCar.apply(car, []))

  //create a new function with a specific context
  console.log(describeCar.bind(car)())
}
