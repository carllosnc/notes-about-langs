/*
  - Arrow functions don't have their own this binding
  - Arrow functions cannot be used as constructors
  - Arrow functions don't have arguments object
  - Arrow functions can't be used with yield
*/

let person = {
  name: 'carll',
  regular: function () {
    console.log(this)
  },
  arrow: () => {
    console.log(this)
  },
}

person.regular()
person.arrow()
