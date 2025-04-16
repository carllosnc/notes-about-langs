/*
  hoisting is the capability of a javascript engine to move function declarations to the top of the scope
*/

//var foo = undefined
console.log(foo)
var foo = 'foo'
console.log(foo)

bar()
function bar() {
  console.log('bar')
}
