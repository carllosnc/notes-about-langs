/*
  Recursion is a topic in functional programing.
  When a function calls itself, it's called a recursive function
*/

{
  function loop(init, end, action){
    // end loop here
    if(init >= end){
      return true
    }

    action(init)

    loop(init + 1, end, action)
  }

  loop(5, 10, index => {
    console.log(`${index} -> hello world!`)
  })
}
