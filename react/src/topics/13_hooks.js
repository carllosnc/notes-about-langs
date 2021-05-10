import React, { useState, useEffect, useRef } from "react"

/*
  https://reactjs.org/docs/hooks-intro.html
*/

// 1 - Only call Hooks at the top level. Don’t call Hooks inside loops,
//     conditions, or nested functions.

// 2 - Only call Hooks from React function components.
//     Don’t call Hooks from regular JavaScript functions.

// Custom hook
function useCounter() {
  const [counter, setCounter] = useState(0)

  function increment() {
    setCounter(counter + 1)
  }

  function decrement() {
    setCounter(counter - 1)
  }

  return {
    value: counter,
    increment: increment,
    decrement: decrement,
  }
}

// Support component
function Observer({ counter }) {
  let message = "the value is zero"

  if (counter > 0) {
    message = "Count greater than zero"
  }

  if (counter < 0) {
    message = "Counter less than zero"
  }

  return (
    <>
      <h1> {message} </h1>
    </>
  )
}

// Container to handle the hook state.
function Counter() {
  const { value, increment, decrement } = useCounter()

  useEffect(() => {
    console.log("changing the value.")

    return () => {
      // unmount component!
    }
  })

  return (
    <>
      <h1> Value = {value} </h1>
      <button onClick={increment}>Increment</button>
      <button onClick={decrement}>Decrement</button>
      <Observer counter={value} />
    </>
  )
}


function Dom(){
  const title = useRef(null)

  useEffect(() => {
    title.current.innerText = "New title"
    title.current.style.color = "red"
    title.current.style.fontSize = "30px"
    title.current.style.textTransform = "uppercase"
    title.current.style.fontFamily = "sans-serif"
    title.current.style.fontWeight = "normal"
  })

  return (
    <section>
      <h1 ref={title}> Hello world </h1>
    </section>
  )
}

function Hooks() {
  return (
    <>
      {/* Example with useState and useEffect */}
      <Counter />
      {/* Example with useRef */}
      <Dom />
    </>
  )
}

export default Hooks
