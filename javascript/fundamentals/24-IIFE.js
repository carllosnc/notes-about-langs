// IIFE (Immediately-invoked function expression)
{
  ;(function () {
    let message = 'hello'
    console.log(message)
  })()

  // ways to create IIFE
  ;(function () {
    console.log('Parentheses around the function')
  })()
  ;(function () {
    console.log('Parentheses around the whole thing')
  })()

  !function () {
    console.log('Birwise NOT operator starts the expression')
  } +
    function () {
      console.log('Unary plus starts the expression')
    }
}
